import 'dart:convert';
import 'package:archdiocese/api/liturgical_api.dart';
import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LiturgicalColoursScreen extends StatefulWidget {
  const LiturgicalColoursScreen({super.key});

  @override
  State<LiturgicalColoursScreen> createState() => _LiturgicalColoursScreenState();
}

class _LiturgicalColoursScreenState extends State<LiturgicalColoursScreen> {
  String? liturgicalColour;
  String? season;
  bool loading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    loadLiturgicalColour();
  }

  Future<void> loadLiturgicalColour() async {
    setState(() {
      loading = true;
      errorMessage = null;
    });

    // final today = DateTime.now();
    // final formattedDate = "${today.year}-${today.month.toString().padLeft(2,'0')}-${today.day.toString().padLeft(2,'0')}";
    // final url = Uri.parse('http://calapi.inadiutorium.cz/api/v0/en/$formattedDate');

    try {
      final data = await LiturgicalApi.fetchLiturgicalColour();
      setState(() {
        liturgicalColour = data['colour'];
        season = data['season'];
        loading = false;
      });
      } catch (e) {
      setState(() {
        errorMessage = e.toString();
        loading = false;
      });

    //   if (response.statusCode == 200) {
    //     final data = json.decode(response.body);
    //     setState(() {
    //       liturgicalColour = (data['liturgical_color'] ?? ["UNKNOWN"]).first.toString();
    //       season = data['season'] ?? "Unknown";
    //       loading = false;
    //     });
    //   } else {
    //     setState(() {
    //       errorMessage = 'Error fetching data: ${response.statusCode}';
    //       loading = false;
    //     });
    //   }
    // } catch (e) {
    //   setState(() {
    //     errorMessage = 'Error: $e';
    //     loading = false;
    //   });
    }
  }

  Color getColour(String? colour) {
    switch (colour?.toUpperCase()) {
      case 'WHITE':
        return AppColors.liturgicalWhite;
      case 'RED':
        return AppColors.liturgicalRed;
      case 'GREEN':
        return AppColors.liturgicalGreen;
      case 'PURPLE':
        return AppColors.liturgicalViolet;
      case 'ROSE':
        return AppColors.liturgicalRose;
      case 'BLACK':
        return Colors.black;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: const Text('Liturgical Colour Today'),
        backgroundColor: AppColors.primaryGreen,
      ),
      body: Center(
        child: loading
            ? const CircularProgressIndicator()
            : errorMessage != null
                ? Text(errorMessage!)
                : Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: getColour(liturgicalColour),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black12, width: 2),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          liturgicalColour ?? "Unknown",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: liturgicalColour == 'BLACK' ? AppColors.liturgicalWhite : Colors.black),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          season ?? "",
                          style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: loadLiturgicalColour,
                          child: const Text("Refresh"),
                        )
                      ],
                    ),
                  ),
      ),
    );
  }
}
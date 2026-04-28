import 'dart:convert';
import 'package:http/http.dart' as http;

class SaintsApi {

  static const String baseUrl = "https://calapi.inadiutorium.cz/api/v0/en/calendars/default";

  // Fetch all saints
  // Future<List<dynamic>> fetchAllSaints() async {
  //   final response = await http.get(
  //     Uri.parse("$baseUrl/saints"),
  //   );

  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     throw Exception("Failed to load saints");
  //   }
  // }

  // Fetch saint of today
  Future<Map<String, dynamic>> fetchSaintToday() async {
    final now = DateTime.now();
    final url =  "$baseUrl/${now.year}/${now.month}/${now.day}";

    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      final decoded =jsonDecode(response.body);
      return decoded;
    } else {
      throw Exception("Failed to load saint: ${response.statusCode}");
    }
  }
  /// Fetch saints for a specific date (optional helper)
  Future<Map<String, dynamic>> fetchSaintByDate(
      int year,
      int month,
      int day,
      ) async {

    final url = "$baseUrl/$year/$month/$day";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "Failed to load saint: ${response.statusCode}");
    }
  }
}
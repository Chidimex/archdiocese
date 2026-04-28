import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MinorSeminary extends StatefulWidget {
  const MinorSeminary({super.key});

  @override
  State<MinorSeminary> createState() => _MinorSeminaryState();
}

class _MinorSeminaryState extends State<MinorSeminary> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('MINOR SEMINARY', style: GoogleFonts.poppins(color: AppColors.cardWhite, fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
             SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      //Image.asset('assets/img/peterclaver.png',),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "	St. Peter Claver Seminary,\n Okpala",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.0),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      //Image.asset('assets/img/claretianUni.png',),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "	Assumpta Minor Seminary,\n Naze",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.0),
          ],),
        ),
      ),
    );
  }
}
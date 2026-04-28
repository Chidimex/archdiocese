import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherSchools extends StatefulWidget {
  const OtherSchools({super.key});

  @override
  State<OtherSchools> createState() => _OtherSchoolsState();
}

class _OtherSchoolsState extends State<OtherSchools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('OTHER HIGH SCHOOLS', style: GoogleFonts.poppins(color: AppColors.cardWhite, fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
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
                              "	Owerri Girls' Secondary School",
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
              SizedBox(height: 15.0),
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
                              "	Holy Ghost College Owerri",
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
            ],
          ),
        ),
      ),
    );
  }
}
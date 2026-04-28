import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradeSchool extends StatefulWidget {
  const GradeSchool({super.key});

  @override
  State<GradeSchool> createState() => _GradeSchoolState();
}

class _GradeSchoolState extends State<GradeSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('NURSERY AND PRIMARY SCHOOL', style: GoogleFonts.poppins(color: AppColors.cardWhite, fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
               SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
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
                              "	St. Columba's Nursery/Primary\n School\n Amaimo Ikeduru",
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
                  height: 100,
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
                              "	St. Finbar's Seminary Nursery\nPrimary School,\n Okpala",
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
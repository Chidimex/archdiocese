import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatholicInstitution extends StatefulWidget {
  const CatholicInstitution({super.key});

  @override
  State<CatholicInstitution> createState() => _CatholicInstitutionState();
}

class _CatholicInstitutionState extends State<CatholicInstitution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text(
          'Catholic Institution',
          style: GoogleFonts.poppins(
            color: AppColors.liturgicalWhite,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Owerri Archdiocese Institutions',
                  style: GoogleFonts.poppins(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/majorseminary');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),

                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    // gradient: LinearGradient(
                    //   colors: [ AppColors.secondaryGreen,AppColors.lightGreen],
                    // ),

                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              'MAJOR SEMINARY:',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: AppColors.liturgicalWhite,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'List of Major Seminaries',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: AppColors.liturgicalWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Spacer(),
                      // Image.asset(
                      //   'assets/img/institute.png',
                      //   fit: BoxFit.cover,
                      //   height: 100.0,
                      //   width: 70.0,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/tertiary');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    // gradient: LinearGradient(
                    //   colors: [AppColors.lightGreen, AppColors.secondaryGreen],
                    // ),

                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Tertiary institution:',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'List of Tertiary Institution',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.liturgicalWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Spacer(),
                      // Image.asset(
                      //   'assets/img/institute.png',
                      //   fit: BoxFit.cover,
                      //   height: 100.0,
                      //   width: 70.0,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'SECONDARY SCHOOLS (HIGH SCHOOLS)',
                  style: GoogleFonts.poppins(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              // Text('SECONDARY SCHOOLS (HIGH SCHOOLS)'),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/minor_seminary');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    // gradient: LinearGradient(
                    //   colors: [AppColors.lightGreen, AppColors.secondaryGreen],
                    // ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'MINOR SEMINARIES:',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'List of Minor Seminaries',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.liturgicalWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Spacer(),
                      // Image.asset(
                      //   'assets/img/institute.png',
                      //   fit: BoxFit.cover,
                      //   height: 100.0,
                      //   width: 70.0,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/otherschools');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    // gradient: LinearGradient(
                    //   colors: [AppColors.lightGreen, AppColors.secondaryGreen],
                    // ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'OTHER HIGH SCHOOLS:',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'List of Other Schools',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.liturgicalWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Spacer(),
                      // Image.asset(
                      //   'assets/img/institute.png',
                      //   fit: BoxFit.cover,
                      //   height: 100.0,
                      //   width: 70.0,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/gradeschool');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    // gradient: LinearGradient(
                    //   colors: [AppColors.lightGreen, AppColors.secondaryGreen],
                    // ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'NURSERY AND PRIMARY SCHOOL\n(GRADE SCHOOLS):',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              'List of Other Schools',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.liturgicalWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //Spacer(),
                      // Image.asset(
                      //   'assets/img/institute.png',
                      //   fit: BoxFit.cover,
                      //   height: 100.0,
                      //   width: 70.0,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              //  Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Text('OTHER HIGH SCHOOLS',style: GoogleFonts.poppins(color: AppColors.textPrimary, fontWeight: FontWeight.w700,
              //   fontSize: 15),),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

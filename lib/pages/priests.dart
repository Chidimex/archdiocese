import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Priests extends StatefulWidget {
  const Priests({super.key});

  @override
  State<Priests> createState() => _PriestsState();
}

class _PriestsState extends State<Priests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text(
          'CLERGY',
          style: GoogleFonts.lora(
            color: AppColors.liturgicalWhite,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Image.asset('assets/img/pope.png'),
              ),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  text: 'His Holiness ',
                  style: GoogleFonts.poppins(
                    color: AppColors.textPrimary,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: 'Pope Leo',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Image.asset('assets/img/bishopbg.png'),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'His Grace Archbishop ',
                    style: GoogleFonts.poppins(
                      color: AppColors.textPrimary,
                      fontSize: 20,
                    ),
                
                    children: [
                      TextSpan(
                        text: '\nLucius Iwejuru Urgorji',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w800,
                          color: AppColors.textPrimary,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Metropolitan Archbishop of Owerri,\n president, Catholic Bishops Conference of Nigeria',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    color: AppColors.textPrimary,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Image.asset('assets/img/auxillarybishop.png'),
              ),
              SizedBox(height: 20.0),
                RichText(
                text: TextSpan(
                  text: 'His Lordship ',
                  style: GoogleFonts.poppins(
                    color: AppColors.textPrimary,
                    fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Most Rev. Moses chikwe',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
              ),
              //Text('His Lordship Most Rev. Moses chikwe '),
              Text(' Auxillary Bishop of owerri',style: GoogleFonts.poppins(
                fontSize: 20),),
              SizedBox(height: 30),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Image.asset('assets/img/A.J.V.png'),
              ),
              SizedBox(height: 20.0),
                RichText(textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'His Grace ',
                  style: GoogleFonts.poppins(
                    color: AppColors.textPrimary,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Most Rev. Anthony\n J.V Obinna',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
              ),
             
              Text('Archbishop Emeritus of Owerri',style: GoogleFonts.poppins(fontSize: 20),),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

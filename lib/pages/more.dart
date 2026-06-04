import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/pages/colours.dart';
import 'package:archdiocese/pages/archdiocese_institue/institution.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreContent extends StatefulWidget {
  const MoreContent({super.key});

  @override
  State<MoreContent> createState() => _MoreContentState();
}

class _MoreContentState extends State<MoreContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        //leading: BackButton(color: AppColors.liturgicalWhite),
        title: Text(
          'More Options',
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w500,
            color: AppColors.liturgicalWhite,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //double screenWidth = MediaQuery.of(context).size.width;
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                   // width: (screenWidth - 30) / 2,subtract padding & spacing,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.cardWhite,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Image.asset(
                            'assets/img/seasons.png',
                            //height: 100, width: 200,
                          ),
                        ),
                        Text(
                          'SEASONS OF THE\nCHURCH',
                          style: GoogleFonts.poppins(color:AppColors.textPrimary, fontWeight: FontWeight.w800 ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 250,
                    //width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.cardWhite,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Image.asset(
                            'assets/img/saints.jpg',
                            height: 200, width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                         "SAINTS' DAYS",
                         style: GoogleFonts.poppins(color:AppColors.textPrimary, fontWeight: FontWeight.w800 ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           
             
            SizedBox(height: 10,), 
             
          ],
        ),
      ),
    );
  }
}
 
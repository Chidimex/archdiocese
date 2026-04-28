import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MajorSeminaries extends StatelessWidget {
  const MajorSeminaries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('MAJOR SEMINARIES',
         style: GoogleFonts.poppins(
          color: AppColors.cardWhite,
           fontWeight: FontWeight.w700),),
      ),
      body: Center(
        child: Column(
          children: [
             SizedBox(height: 25.0),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: AppColors.backgroundCream,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.liturgicalGold),
              ),
              child: Row(
                children: [
                  Image.asset('assets/img/wisdom.png',height: 100,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("•	Seat of wisdom\n  major seminary,\n ulakwo \n(Provincial seminary)",
                         style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),),
                       
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: AppColors.backgroundCream,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.liturgicalGold),
              ),
              child: Row(
                children: [
                  Image.asset('assets/img/assumpta.png', height: 100,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text("•	Assumpta\n  Spiritual year\n  Seminary ogbaku",
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
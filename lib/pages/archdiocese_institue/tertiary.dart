import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TertiaryInstitution extends StatefulWidget {
  const TertiaryInstitution({super.key});

  @override
  State<TertiaryInstitution> createState() => _TertiaryInstitutionState();
}

class _TertiaryInstitutionState extends State<TertiaryInstitution> {
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
final isMobile = width<600;
double responsiveFont(BuildContext context, double size) {
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth * (size / 375); // 375 = base design width
}
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text(
          'TERTIARY INSTITUTION',
          style: GoogleFonts.poppins(
            color: AppColors.cardWhite,
            fontWeight: FontWeight.w700,
          ),
        ),
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
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/img/claretianUni.png',
                      width: 60, fit: BoxFit.cover,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "	Claretian University of Nigeria, Nekede\n(Established by the Claretians)",
                            textAlign: TextAlign.left,
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontSize: responsiveFont(context, 14),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
                  height: 100,
                   width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/img/holyrosary.png',
                       width: 60, fit: BoxFit.cover,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "	Holy Rosary School\nof Nursing/Midwifery,\nEmekuku",
                            textAlign: TextAlign.left,
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontSize: responsiveFont(context, 14),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
                  height: 100,
                 width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/img/holyrosary.png', height: 100),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "	Holy Rosary School\n of health Technology,\nEmekuku",
                            textAlign: TextAlign.left,
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                             fontSize: responsiveFont(context, 14),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
                height: 100,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.backgroundCream,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/img/holyrosary.png',height: 100,
                     width: 60, fit: BoxFit.cover,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Holy Rosary\n of pharmacy Technician,\nEmekuku",
                        textAlign: TextAlign.left, 
                        softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                         style: GoogleFonts.poppins(
                         fontSize: responsiveFont(context, 14), 
                          fontWeight: FontWeight.w600),),
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
                height: 100,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.backgroundCream,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/img/ow.png',height: 100,
                     width: 60, fit: BoxFit.cover,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("St. Augustine’s\n Catechetical College,\nOwerri",textAlign: TextAlign.left,
                        softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                         style: GoogleFonts.poppins(
                       fontSize: responsiveFont(context, 14), 
                          fontWeight: FontWeight.w600),),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

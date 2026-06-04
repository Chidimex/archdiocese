import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArchCelebration extends StatefulWidget {
  const ArchCelebration({super.key});

  @override
  State<ArchCelebration> createState() => _ArchCelebrationState();
}

class _ArchCelebrationState extends State<ArchCelebration> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
leading: BackButton(color: AppColors.cardWhite,),
        backgroundColor: AppColors.primaryGreen,
        title: Text('ARCHDIOCESAN CELEBRATION', style: GoogleFonts.poppins(color: AppColors.cardWhite,
         fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
       
       child: Column(
         //crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
         SizedBox(height: 20,),
         Text('MAJOR ARCHDIOCESAN CELEBRATION',
         style: GoogleFonts.poppins(color: AppColors.textPrimary, fontWeight: FontWeight.w600),),
         Text('THE ARCHDIOCESAN DAY/ODENIGBO LECTURE',
         style: GoogleFonts.poppins(color: AppColors.textPrimary, fontWeight: FontWeight.w600),),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Apart from the normal and usual liturgical and sacramental celebrations of the Church, there is a major event fondly celebrated by the Archdiocese.This is the ARCHDIOCESAN DAY/ODENIGBO LECTURE SERIES CELEBRATION. The event marks the Archdiocese's celebration of its existence and mission. But at the heart of this Archdiocesan Day celebration is the ODENIGBO LECTURE SERIES, founded in 1996 by the Archbishop Emeritus, His Grace, Most Rev. Anthony J.V. Obinna. This is an annual Lecture aimed at making CHRIST, who is the Odenigbo per excellence, take complete root in the life and culture of the Igbo people. The Lecture is rendered totally in the Igbo Language and by renowned Igbo Scholars, taken from all parts of Igbo land. It attracts people from all walks of life, local and international.The Archdiocesan Day is celebrated on the first Saturday in September and the preceding Friday. This date in a way recalls the inauguration of Owerri Archdiocese and installation of Archbishop Obinna - 3rd September 1994. The event begins with Odenigbo Eve celebrations that feature Cultural displays like Mgba Odinala, Songs and drama. The next day, and the high point of the celebration, features a Holy Mass, Odenigbo Support fund-raising and the Lecture proper. The Lecture, which has undergone its 26th edition, has succeeded in awakening many Igbos to the responsibilities they have as Igbo Christians and the duty they owe towards keeping alive their God-given Igbo language.However, the event is very capital intensive.The available resources of the Archdiocese and the goodwill of the faithful, especially of the Archdiocese, have so far sustained the Odenigbo Celebration. But its advantages touch all. The Archdiocese looks on her many sons and daughters and indeed all Igbos, especially those living outside the State and outside the Country, to support the project."),
         )
       ],),
              ),
    );
  }
}
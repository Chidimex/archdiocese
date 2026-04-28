import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pastoralvisit extends StatefulWidget {
  const Pastoralvisit({super.key});

  @override
  State<Pastoralvisit> createState() => _PastoralvisitState();
}

class _PastoralvisitState extends State<Pastoralvisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('PROGRAMME OF THE YEAR', style: GoogleFonts.poppins(color: AppColors.cardWhite, fontWeight: FontWeight.w700),),
      ),
    );
  }
}
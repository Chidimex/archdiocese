import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/pages/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController newpassword = TextEditingController();
    TextEditingController createnewpassword = TextEditingController();

    return  Scaffold(
       backgroundColor: AppColors.backgroundCream,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),

                Center(
                  child: Text(
                    'Reset Password',
                    style: GoogleFonts.lora(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text('New Password',style:
                 GoogleFonts.lora(fontSize: 16,
                 fontWeight: FontWeight.w600),),
                TextFormField(
                  controller: newpassword,
                   obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock_outlined),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    filled: true,
                    fillColor: AppColors.cardWhite,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text('Create new password',style: 
                GoogleFonts.lora(fontSize: 16,
                fontWeight: FontWeight.w600),),
                TextFormField(
                  controller: createnewpassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock_outlined),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    filled: true,
                    fillColor: AppColors.cardWhite,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.liturgicalGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context)=>SigninScreen()));
                    },
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                        color: AppColors.cardWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
    ]
    )
    )
    )));
  }
}
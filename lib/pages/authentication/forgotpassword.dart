import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/pages/authentication/resetpassword.dart';
import 'package:archdiocese/pages/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Center(
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.lora(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Enter your email and we will send you instructions to reset your password ',
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Email address',
                  style: GoogleFonts.lora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email_outlined),
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
                    onPressed: () async {
                      if (email.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter your email'),
                          ),
                        );
                        return;
                      }
                      try {
                        setState(() {
                          isLoading = true;
                        });

                        print("Attempting reset for: ${email.text.trim()}");
                        await FirebaseAuth.instance.sendPasswordResetEmail(
                          email: email.text.trim(),
                        );
                        print("RESET EMAIL SENT SUCCESSFULLY");

                        if (mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please reset link sent. check your email.',
                              ),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SigninScreen(),
                            ),
                          );
                        }
                      } on FirebaseAuthException catch (e) {
                        print("ERROR CODE: ${e.code}");
                        print("ERROR MESSAGE: ${e.message}");

                        // String message = 'Unable to send rest email';
                        // if(e.code == 'invalid-email'){
                        //   message = 'Invalid email address';
                        // }else if (e.code == 'user-not-found'){
                        //   message = 'No account found with this email';
                        // }
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Error: ${e.code}")),
                        );
                      } finally {
                        if (mounted) {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      }
                      // Navigator.push(context, MaterialPageRoute(
                      // builder: (context)=>ResetPassword()));
                    },
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : Text(
                            'Send Reset Link',
                            style: GoogleFonts.lora(
                              fontSize: 20,
                              color: AppColors.cardWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Remember your password?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/pages/authentication/forgotpassword.dart';
import 'package:archdiocese/pages/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    bool isLoading = false;
     bool _isPasswordVisible = false;
     @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
   Future<void> signInWithGoogle() async {
    try {
      final GoogleSignIn signIn = GoogleSignIn.instance;
 await signIn.initialize();
      final GoogleSignInAccount googleUser =
          await signIn.authenticate();

      //if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
       googleUser.authentication;
          //await googleUser.authentication;
 final credential = GoogleAuthProvider.credential(
       // accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
       if (mounted) {
        Navigator.pushReplacementNamed(
          context,
          '/bottomnav',
        );
      }
    } catch (e) {
       print("GOOGLE SIGN IN ERROR: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Google Sign-In failed: $e')),
      );
       }
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
                    'Welcome back!',
                    style: GoogleFonts.lora(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
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
                SizedBox(height: 20),
                Text(
                  'Password',
                  style: GoogleFonts.lora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextFormField(
                  controller: password,
                  obscureText: ! _isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock_outlined),
                    suffixIcon: IconButton(

                      onPressed: (){
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      }, 
                      icon: Icon(
                        _isPasswordVisible
                        ? Icons.visibility_outlined
                        :Icons.visibility_off_outlined
                      )),
                    filled: true,
                    fillColor: AppColors.cardWhite,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: GoogleFonts.lora(
                        color: AppColors.primaryGreen,
                        fontWeight: FontWeight.w500,
                      ),
                      
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                      try {
                        setState(() {
                          isLoading =true;
                        });
                        await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text.trim(),
                         password: password.text.trim(),
                         );
                         if (mounted){
                          Navigator.pushReplacementNamed(context, '/bottomnav');
                         }
                      } on FirebaseAuthException catch (e){
                        String message = 'Login failed';
                        if (e.code == 'user-not-found') {
                          message = 'No account found for this email';
                        } else if (e.code == 'wrong-password') {
                          message = 'Incorrect password';
                        } else if (e.code == 'invalid-email') {
                          message = 'Invalid email address';
                        } else if (e.code == 'invalid-credential') {
                          message = 'Invalid email or password';
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(message)),
                        );
                      } finally {
                        if (mounted) {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      }
                     // Navigator.pushNamed(context, '/bottomnav');
                    },
                    child: isLoading
                    ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                    :Text(
                      'Sign In',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                        color: AppColors.cardWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 1, color: Colors.grey.shade400),
                    ),
                    Text(
                      'Or Continue with',
                      style: GoogleFonts.lora(fontSize: 16),
                    ),
                    Expanded(
                      child: Divider(thickness: 1, color: Colors.grey.shade400),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: signInWithGoogle,
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/img/google.png', height: 24),
                        SizedBox(width: 10),
                        Text(
                          'Sign in with Google',
                          style: GoogleFonts.lora(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
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
//Certificate fingerprints:
        //  SHA1: 80:30:34:4F:7E:69:7C:1D:94:C5:ED:E3:5E:C9:85:CC:F2:C6:64:98
        //  SHA256: 03:4E:13:C3:C5:A1:0F:9E:70:7F:E3:2F:1B:14:2D:9C:8D:CE:50:AD:BD:22:E9:C3:32:04:E0:73:78:07:F5:F7
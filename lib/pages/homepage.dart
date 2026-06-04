import 'package:archdiocese/cubit/readings_cubit.dart';
import 'package:archdiocese/cubit/readings_state.dart';
import 'package:archdiocese/cubit/saint_today_cubit.dart';
import 'package:archdiocese/cubit/saint_today_state.dart';
import 'package:archdiocese/pages/calendar.dart';
import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/pages/history.dart';
import 'package:archdiocese/pages/archdiocese_institue/institution.dart';
import 'package:archdiocese/pages/more.dart';
import 'package:archdiocese/pages/parish.dart';
import 'package:archdiocese/pages/pastoralvisit.dart';
import 'package:archdiocese/pages/priests.dart';
import 'package:archdiocese/pages/profile.dart';
import 'package:archdiocese/pages/saints.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:archdiocese/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});
  Color _getLiturgicalColor(String season) {

    switch (season.toLowerCase()) {
      case 'advent':
        return AppColors.liturgicalViolet;
      case 'christmas':
        return AppColors.liturgicalWhite;
      case 'lent':
        return AppColors.liturgicalViolet;
      case 'easter':
        return AppColors.liturgicalWhite;
      case 'ordinary time':
        return AppColors.liturgicalGreen;
      default:
        return AppColors.backgroundCream;
    }
  }
String _getLiturgicalColorName(String season) {
  switch (season.toLowerCase()) {
    case 'advent':
      return "Violet";
    case 'christmas':
      return "White";
    case 'lent':
      return "Violet";
    case 'easter':
      return "White";
    case 'ordinary time':
      return "Green";
    default:
      return "Unknown";
  }
}
  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  void initState() {
    super.initState();
    context.read<ReadingsCubit>().fetchReadings(DateTime.now());
  }
   @override
  Widget build(BuildContext context) {
    context.read<ReadingsCubit>().fetchReadings(DateTime.now());
final width =MediaQuery.of(context).size.width;
final isMobile = width<600;
    return SafeArea(
      child: Container(
        color: AppColors.backgroundCream,

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/img/nbgcross.png',
                      height:isMobile? 50:100,
                          // width*0.12,
                        //  50.0,
                      width: 50.0,
                      //width*0.12
                    ),
                  ),
                  //SizedBox(width: 60.0),
                  Center(
                    child: Text(
                      'Archdiocese Liturgical\n Programme',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lora(fontWeight: FontWeight.w900),
                    ),
                  ),
                  PopupMenuButton<String>
                  (icon: Icon(Icons.menu),
                  onSelected: (value) async {
                    if (value == 'Profile'){
                      Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context)=> ProfileScreen()));
                    }
                    if (value == 'logout'){
                      await FirebaseAuth.instance.signOut();
                      if (context.mounted){
                        Navigator.pushNamedAndRemoveUntil(context, '/', (route)=>false,);
                      }
                    }
                  },
                    itemBuilder: (context) =>[
                      PopupMenuItem<String>(
                        value: 'Profile',
                        child: 
                          Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(width: 10),
                              Text('Profile')
                            ],
                          ),      
                  ),
                  PopupMenuItem<String>(
                    value: 'logout',
                    child: Row(
                      children: [
                              Icon(Icons.logout),
                              SizedBox(width: 10),
                          Text('Logout'),
                            ],
                    )
                    )
                  ],
                      )
            ]),
                    
                
             
              Divider(thickness: 4.0, color: AppColors.liturgicalGold),
              Text(
                'Today in the Liturgy',
                style: GoogleFonts.lora(fontWeight: FontWeight.w900),
              ),
              //Used a package called intl for dateformant
              Text(DateFormat('EEEE, MMMM d').format(DateTime.now()),
              style: GoogleFonts.lora(),),
              SizedBox(height: 20.0),
              //1st container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> History()));
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [
                       AppColors.lightGreen,
                      AppColors.secondaryGreen,
                     
                    ],
                  ),
                    //color: AppColors.secondaryGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'ABOUT THE ARCHDIOCESE:',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Text(
                            'History of the\nArchidocese',
                            style: GoogleFonts.lora(
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/img/assumpta.png',
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 70.0,
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 20.0),
              //2nd container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Priests()));
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [
                       AppColors.lightGreen,
                      AppColors.secondaryGreen,
                     
                    ],
                  ),
                    //color: AppColors.secondaryGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Priests of the Archdiocese:',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Text(
                            'Priest and the religious',
                            style: GoogleFonts.lora(
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/img/priestbg.png',
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 60.0,
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 20.0),
              //3rd container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Parish()));
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [
                       AppColors.lightGreen,
                      AppColors.secondaryGreen,
                     
                    ],
                  ),
                    //color: AppColors.secondaryGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Parishes:',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Text(
                            'List of Parishes',
                            style: GoogleFonts.lora(
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/img/ow.png',
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 80.0,
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 20.0),
               //4th container
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CatholicInstitution()));
                },
                 child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [
                       AppColors.lightGreen,
                      AppColors.secondaryGreen,
                     
                    ],
                  ),
                    //color: AppColors.secondaryGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Catholic Institution:',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Text(
                            'List of  Schools',
                            style: GoogleFonts.lora(
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/img/institute.png',
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 80.0,
                      ),
                    ],
                  ),
                               ),
               ),
               SizedBox(height: 20.0),
               // 5th container
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pastoralvisit()));
                },
                 child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [
                       AppColors.lightGreen,
                      AppColors.secondaryGreen,
                     
                    ],
                  ),
                    //color: AppColors.secondaryGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Programme of the year:',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                          Text(
                            'Pastoral visit',
                            style: GoogleFonts.lora(
                              fontWeight: FontWeight.w700,
                              color: AppColors.liturgicalWhite,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/img/bishopbg.png',
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 90.0,
                      ),
                    ],
                  ),
                               ),
               ),
               // SizedBox(height: 20.0),
              SizedBox(height: 20.0),
              //7th container
                BlocBuilder<ReadingsCubit, ReadingsState>(
                builder: (context, state) {
                  String season = "Ordinary Time";
                  Color color = AppColors.liturgicalGreen;

                  if (state.data != null) {
                    season = state.data!['season'];
                    color = widget._getLiturgicalColor(season);
                  }
                  
             return Container(
                padding: EdgeInsets.all(10.0),
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.liturgicalGreen,
                      AppColors.backgroundCream,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Liturgical Season:\n$season',
                          style: GoogleFonts.lora(
                            fontWeight: FontWeight.w500,
                            color:  (season.toLowerCase() == "christmas" ||
                                        season.toLowerCase() == "easter")
                                    ? Colors.black
                                    : Colors.white,
                          ),
                        ),
                        
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/img/grassbg.png',
                      fit: BoxFit.cover,
                      height: 100.0,
                      width: 70.0,
                    ),
                  ],
                ),
              );
                },
                ),
              SizedBox(height: 20.0),
              //8th container
              BlocBuilder<ReadingsCubit, ReadingsState>(
builder: (context, state) {
    String season = "Ordinary Time";
    Color color = AppColors.liturgicalGreen;
    String colorName = "Green";

    if(state.data !=null){
      season = state.data!['season'];
      color = widget._getLiturgicalColor(season);
      colorName = widget._getLiturgicalColorName(season);
    }
   
   return   Container(
                padding: EdgeInsets.all(10.0),
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: color,
                  // gradient: LinearGradient(
                  //   colors: [
                  //     AppColors.liturgicalGreen,
                  //     AppColors.backgroundCream,
                  //   ],
                  // ),

                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Today's Colour:\n$colorName",
                          style: GoogleFonts.lora(
                            fontWeight: FontWeight.w500,
                            color: (season.toLowerCase() == "white")
                            //season.toLowerCase() == "easter"
                            //)
                            ? Colors.black 
                            : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              );
},
              ),
              SizedBox(height: 20),
              Divider(thickness: 2.0, color: AppColors.dividerColor),
              Text(
                'Reflections & Notes',
                style: GoogleFonts.lora(
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10.0),
                height: 60,
                width: 300,

                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 229, 219, 219),
                  ),
                  color: AppColors.backgroundCream,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Trust in God at all times. May the peace of christ guide your heart',
                  style: GoogleFonts.lora(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(height: 30),
    ]
    )
    )
    )
    );
    
   
          
      
  }
}

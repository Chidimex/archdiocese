import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:archdiocese/api/saints_api.dart';
import 'package:archdiocese/cubit/readings_cubit.dart';
import 'package:archdiocese/cubit/saint_today_cubit.dart';
import 'package:archdiocese/pages/archdiocese_institue/gradeschool.dart';
import 'package:archdiocese/pages/archdiocese_institue/minor_seminary.dart';
import 'package:archdiocese/pages/archdiocese_institue/otherschools.dart';
import 'package:archdiocese/pages/archdiocese_institue/tertiary.dart';
import 'package:archdiocese/pages/authentication/signin.dart';
import 'package:archdiocese/pages/calendar.dart';
import 'package:archdiocese/pages/bottomnav.dart';
import 'package:archdiocese/pages/colours.dart';
import 'package:archdiocese/pages/history.dart';
import 'package:archdiocese/pages/homepage.dart';
import 'package:archdiocese/pages/archdiocese_institue/institution.dart';
import 'package:archdiocese/pages/archdiocese_institue/majorseminary.dart';
import 'package:archdiocese/pages/more.dart';
import 'package:archdiocese/pages/parish.dart';
import 'package:archdiocese/pages/priests.dart';
import 'package:archdiocese/pages/saints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/navigation_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavCubit>(
          create:(_)=> NavCubit(), 
          ),
          BlocProvider<ReadingsCubit>(create:(_) => ReadingsCubit(),
          ),
          BlocProvider(create: (_)=> SaintTodayCubit(SaintsApi())..getSaintToday())
      ],

      child: MaterialApp(
 
        debugShowCheckedModeBanner: false,
        //home:  Bottomnav(),
        
      routes: {
                '/':(context)=> SigninScreen(),
        '/bottomnav':(context)=> Bottomnav(),
        '/calendar':(context)=>Calendar(),
        '/colours':(context)=>LiturgicalColoursScreen(),
        '/history':(context)=>History(),
        '/homepage':(context)=>HomeContent(),
        '/institution':(context)=>CatholicInstitution(),
        '/more':(context)=>MoreContent(),
        '/parish':(context)=>Parish(),
        '/priests':(context)=>Priests(),
        '/saints':(context)=>SaintScreen(),
        '/majorseminary':(context)=>MajorSeminaries(),
         '/tertiary':(context)=>TertiaryInstitution(),
         '/minor_seminary':(context)=> MinorSeminary(),
         '/otherschools':(context)=> OtherSchools(),
         '/gradeschool':(context)=> GradeSchool(),
      },
      
      ),
    );
  }
}



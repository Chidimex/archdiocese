import 'package:archdiocese/api/saints_api.dart';
import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:archdiocese/cubit/saints_cubit.dart';
import 'package:archdiocese/cubit/saints_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SaintScreen extends StatefulWidget {
  const SaintScreen({super.key});

  @override
  State<SaintScreen> createState() => _SaintScreenState();
}

class _SaintScreenState extends State<SaintScreen> {
  @override
  Widget build(BuildContext context) {
 return BlocProvider(
      create: (_) => SaintsCubit(SaintsApi())..getSaintByDate(DateTime.now()),
      child: Scaffold(
        appBar: AppBar(title: Text("All Saints")),
        body: BlocBuilder<SaintsCubit, SaintsState>(
          builder: (context, state) {

            if (state is SaintsLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is SaintsLoaded) {
              return ListView.builder(
                itemCount: state.celebrations.length,
                itemBuilder: (context, index) {

                  final saint = state.celebrations[index];

                  return ListTile(
                    title: Text(saint['title'] ?? ''),
                    subtitle: Text(
                     "${saint['rank']} • ${saint['colour']}",
                    ),
                  );
                },
              );
            }
 if (state is SaintsError) {
          return Center(child: Text(state.message));
        }

        return SizedBox();
           // return Center(child: Text("Failed to load saints"));
          },
        ),
      ),
    );
    // return  Scaffold(
    //   backgroundColor: AppColors.backgroundCream,
    //   appBar: AppBar(
    //     title: Text('SAINTS', style: GoogleFonts.poppins(color: AppColors.liturgicalWhite, fontWeight: FontWeight.w800, fontSize: 25),),
    //     backgroundColor: AppColors.primaryGreen,
    //   ),
    // );
  }
}
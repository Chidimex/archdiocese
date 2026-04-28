import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar:AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('BRIEF ON THE ARCHDIOCESE', style: GoogleFonts.poppins(color: AppColors.liturgicalWhite, fontWeight: FontWeight.w800),),
      ) ,
      body: SingleChildScrollView(
        child: Column(
          
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The Catholic Archdiocese of Owerri, Nigeria, began with the arrival of missionaries Fr. Feral and Bro. Joseph in 1912, with the first Mass at Ulakwo. Established as an Apostolic Vicariate in 1948 and a diocese in 1950, it was elevated to a Metropolitan Archdiocese in 1994, serving as a major center for Catholicism in the region. '),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Key Historical Developments:'),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Establishment & Growth: The Catholic Church arrived in Owerri in 1912. It was carved out as a separate Vicariate from Onitsha in 1948 and elevated to a diocese on April 18, 1950, with Most Rev. Joseph B. Whelan as the first Bishop.'),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Indigenous Leadership: Msgr. Joseph Nwanegbo was ordained in 1937 as the first indigenous priest from the area.'),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Post-War Era: Following the Nigerian Civil War, Bishop Mark Unegbu succeeded Bishop Whelan in September 1970.'),
            ),
           SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Archdiocese Status: On March 26, 1994, the diocese was elevated to an Archdiocese, with Most Rev. Anthony J.V. Obinna appointed as the first Archbishop.'),
            ), 
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recent History: Archbishop Obinna retired in 2022, with Most Rev. Lucius Iwejuru Ugorji taking over as Archbishop. The Archdiocese has played a significant role in education, health, and social development, managing numerous schools and hospitals.'),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Metropolitan See: Owerri Archdiocese serves as the Metropolitan See for suffragan dioceses including Aba, Ahiara, Okigwe, Orlu, and Umuahia.'),
            )
          ],
        ),
      ),
    );
  }
}
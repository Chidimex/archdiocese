import 'package:archdiocese/apptheme/themecolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Parish extends StatefulWidget {
  const Parish({super.key});

  @override
  State<Parish> createState() => _ParishState();
}

class _ParishState extends State<Parish> {
  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.backgroundCream,
      appBar: AppBar(
        //shadowColor: AppColors.liturgicalGold,
        backgroundColor: AppColors.primaryGreen,
        leading: BackButton(color: AppColors.liturgicalWhite),
        title: Text(
          'PARISHES',
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w800,
            color: AppColors.liturgicalWhite,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: ParishSearchDelegate(),);
            },
            icon: Icon(Icons.search),
            color: AppColors.liturgicalWhite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(child: Text('EMEKUKU DEANERY',
            style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 20
          ),)),

            SizedBox(height: 5.0),
            //1st container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  color: AppColors.backgroundCream,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Row(
                  children: [
                    ///Image.asset('assets/img/ow.png',fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Our Lady Of Mount Carmel, Emekuku\n (Deanery Head)",
                             style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 15
          ),
                          ),
                          Text(
                            "PARISH PRIEST: Rev Fr. Stephen Egwim (Dean)\n Tel: 07062144770",
                          ),
                          Text('Email: stephen.egwim@owarch.org.ng'),
                          Text(
                            'ASST.PARISH PRIEST: Rev. Fr. Isdore Okoro\nTel: 0706694774',
                          ),
                          Text('Email:  isidore.okoro@owarch.org.ng'),
                          Text(
                            'RESIDENT PRIEST:  Rev.Fr. Francis Metu\nTel: 08035441435',
                          ),
                          Text('Email: francis.metu@owarch.org.ng'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: AppColors.backgroundCream,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Row(
                  children: [
                    ///Image.asset('assets/img/ow.png',fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("HOLY CROSS, EMII",
                           style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 15
          ),),
                          Text(
                            "PARISH PRIEST: Rev Fr. Rev Fr. Jude E. Ike\nTel: 07036621087",
                          ),
                          Text('Email: jude.ike@owarch.org.ng'),
                          Text(
                            'ASST.PARISH PRIEST: Rev. Fr. Boniface Nwebe\nTel: 08064591589',
                          ),
                          Text('Email:  boniface.nwebe@owarch.org.ng'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: AppColors.backgroundCream,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.liturgicalGold),
                ),
                child: Row(
                  children: [
                    ///Image.asset('assets/img/ow.png',fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ST MARY’S, EMII (Umuawuka)",
                           style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 15
          ),),
                          Text(
                            "PARISH PRIEST: Rev Fr. Patrick Nwokocha\nTel: 07044819089",
                          ),
                          Text('Email: patrick.nwokocha@owarch.org.ng'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAll = !showAll;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      showAll ? 'View less' : 'View all',
                      style: GoogleFonts.poppins(
                        color: AppColors.secondaryGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (showAll) ...[
              SizedBox(height: 10),
              Center(child: Text('OWERRI DEANERY',
               style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 20
          ),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      ///Image.asset('assets/img/ow.png',fit: BoxFit.cover,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ST. PAUL’S, OWERRI (DEANERY HEAD)",
                               style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textPrimary,
                                    fontSize: 15
                                  ),),
                              Text(
                                "PARISH PRIEST: Rev Fr.  Charles Ikwuegbu (Dean)\nTel: 09068124784",
                              ),
                              Text('Email: charles.ikwuegbu@owarch.org.ng'),
                              Text(
                                'ASSIT. PARISH PRIEST: Rev. Fr. Peter Divine Akujobi\nTel: 08067870110',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                   width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      ///Image.asset('assets/img/ow.png',fit: BoxFit.cover,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ST. MULUMBA’S OWERRI",
                               style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textPrimary,
                                    fontSize: 15
                                  ),),
                              Text(
                                "PARISH PRIEST: Rev Fr.  Raymond Madu\nTel: 08035755985",
                              ),
                              Text('Email: raymond.madu@owarch.org.ng'),
                              Text(
                                'ASSIT. PARISH PRIEST: Rev. Fr. Peter Divine Akujobi\nTel: 08067870110',
                              ),
                              Text('Email: nnanabu.emmanuel@owarch.org.ng'),
                              Text(
                                'SACRA PRESENCE: Rev. Fr. Raymond Nzereogu\nTel: 08064918509',
                              ),
                              Text(
                                'HOLIDAY RESIDENCE: Rev. Fr. Chetachi Chukwu\nTel: 08060240995',
                              ),
                              Text('Email: chetachi.chuwkwu@owarch.org.ng'),
                              Text(
                                'RESIDENT PRIEST: Rev. Fr. Augustin Uchegbu\n Tel: 08067520795',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      ///Image.asset('assets/img/ow.png',fit: BoxFit.cover,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("MARIA ASSUMPTA CATHEDERAL PARISH, OWERRI",
                               style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textPrimary,
                                    fontSize: 15
                                  ),),
                              Text(
                                'ADMINISTRATOR: Rev. Fr. Martin Edward Ohajunwa\nTel: 09038737999',
                              ),
                              Text('Email: martined.ohajunwa@owarch.org.ng'),
                              Text(
                                'ASST. ADMINISTRATOR I: Rev. Fr.  Christopher Nwakpu\nTel: 08100660836',
                              ),
                              Text('Email: christopher.nwakpu@owarch.org.ng'),
                              Text(
                                'ASST. ADMINISTRATOR I1: Rev. Fr.  Eberechukwu Ezurike\nTel: 07062720154',
                              ),
                              Text(
                                'HOLIDAY RESIDENCE:\nRev. Fr. Chetachi Chukwu\nTel: 08060240995',
                              ),
                              Text('Email: precious.ezurike@owarch.org.ng'),
                              Text(
                                'RESIDENCE: Rev. Fr. Eziamuche Onuoha\nTel: 08037497184',
                              ),
                              Text('Email: eziamuche.onuoha@owarch.org.ng'),
                            Text(
                                'RESIDENCE: Rev. Fr. Gregory Umunnakwe\nTel: 08100367050',
                              ),
                                                          Text('Email: gregory.umunnakwe@owarch.org.ng'),
                                                          ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //2nd Container
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/img/ow.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ST. Mary's church",
                             style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 15
          ),),
                            Text("Rev.Fr Anthony Eze\nOrdained: 2002"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              //3rd container
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundCream,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.liturgicalGold),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/img/ow.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sacred Heart Parish",
                             style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            fontSize: 15
          ),),
                            Text("Rev.Fr Samuel Adewoke\nOrdained: 2010"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
class ParishSearchDelegate extends SearchDelegate {
  final List<String> parishes = [
    "Our Lady Of Mount Carmel, Emekuku",
    "Holy Cross, Emii",
    "St Mary’s, Emii (Umuawuka)",
    "St. Paul’s, Owerri",
    "St. Mulumba’s Owerri",
    "Maria Assumpta Cathedral Parish, Owerri",
    "St. Mary's Church",
    "Sacred Heart Parish",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = parishes
        .where((p) => p.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView(
      children: results.map((p) {
        return ListTile(
          title: Text(p),
          onTap: () {
            close(context, p);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Selected: $p"),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // final suggestions = parishes
    //     .where((p) => p.toLowerCase().contains(query.toLowerCase()))
    //     .toList();
    if (query.isEmpty) {
  return Center(
    child: Text(
      "Search for a parish...",
      style: TextStyle(fontSize: 16),
    ),
  );
}

final suggestions = parishes
    .where((p) => p.toLowerCase().contains(query.toLowerCase()))
    .toList();

    return ListView(
      children: suggestions.map((p) {
        return ListTile(
          title: Text(p),
          onTap: () {
            query = p;
            showResults(context);
          },
        );
      }).toList(),
    );
  }
}

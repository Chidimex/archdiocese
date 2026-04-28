import 'package:archdiocese/apptheme/themecolors.dart';
//import 'package:archdiocese/cubit/nav_cubit.dart';
import 'package:archdiocese/cubit/navigation_cubit.dart';
import 'package:archdiocese/pages/arch_celebration.dart';
import 'package:archdiocese/pages/calendar.dart';
import 'package:archdiocese/pages/homepage.dart';
import 'package:archdiocese/pages/more.dart';
import 'package:archdiocese/pages/parish.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
    final List<Map<String, String>> _messages =[]; 
   final TextEditingController chatController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    final List<Widget> pages = [
 
      const HomeContent(),
      const Calendar(),
      const ArchCelebration(),
      const MoreContent(),
   ];
 

    return BlocBuilder<NavCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: AppColors.backgroundCream,
          body: pages[currentIndex],

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.backgroundCream,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.lightGreen,
            unselectedItemColor: AppColors.primaryGreen,
            onTap: (index) {
              context.read<NavCubit>().changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.church),
                label: 'Celebration',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'More',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.lightGreen,
            child: Icon(Icons.chat_bubble,color: AppColors.liturgicalWhite, ),
            onPressed: _openChat
            ),
        );
      },
    );
  }
  void _openChat() {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setModalState) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              height: 450,
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [

                  const Text(
                    "Community Chat",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Expanded(
                    child: ListView.builder(
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        final message = _messages[index];

                        return Align(
                          alignment:
                              message["sender"] == "user"
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: message["sender"] == "user"
                                  ? AppColors.lightGreen
                                  : Colors.grey.shade300,
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                            child: Text(
                              message["text"] ?? "",
                              style: TextStyle(
                                color: message["sender"] == "user"
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const Divider(),

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: chatController,
                          decoration: const InputDecoration(
                            hintText: "Type a message...",
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send,
                            color: AppColors.lightGreen),
                        onPressed: () {
                          if (chatController.text.trim().isEmpty) return;

                          setModalState(() {
                            _messages.add({
                              "sender": "user",
                              "text": chatController.text.trim(),
                            });
                          });

                          chatController.clear();
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
}
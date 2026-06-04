import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('THIS IS MY PROFILE')
            ],
          ),
        ),
      ),
    );
  }
}
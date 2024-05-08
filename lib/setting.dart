import 'package:flutter/material.dart';
//import 'package:test_2/common/navigation.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  //int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: (Text('Settings')),
        backgroundColor: Colors.blueGrey.shade300,
        
        ),
        

    );
  }
}
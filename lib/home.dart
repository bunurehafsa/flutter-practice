import 'package:flutter/material.dart';
//mport 'package:test_2/common/navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: ( Text('Home')),
        backgroundColor: Colors.blueGrey.shade300,
        
        ),
        

    );
  }
}
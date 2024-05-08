import 'package:flutter/material.dart';
//import 'package:test_2/common/navigation.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 // int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: (Text('Search')),
        backgroundColor: Colors.blueGrey.shade300,
        
        ),
        

    );
  }
}
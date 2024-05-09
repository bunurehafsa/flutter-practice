import 'package:flutter/material.dart';
import 'package:test_2/home.dart';
import 'package:test_2/search.dart';
import 'package:test_2/setting.dart';

class MainScreen extends StatefulWidget {
  final String username;
  final String email;
  const MainScreen({
    super.key, 
    required this.username, 
    required this.email});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex =0;
  late String username;
  late String email;
  late List<Widget>screens=[];
  
  @override
  void initState(){
    super.initState();
    username=widget.username;
    email=widget.email;

   // priusername ${widget.username}');
    // print('email ${widget.email}');
    screens=[
    HomeScreen(username: username),
    const SearchScreen(),
    const SettingScreen(),
    ];
  
     
       }

  Widget build(BuildContext context) {
    //print('username)
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
          backgroundColor: Colors.blue.shade300,
          selectedFontSize: 12,
          selectedItemColor: Colors.white,
          onTap: (value) {
            print('Selectes value:$value');
            
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              
              icon:Icon (Icons.home),
              label: widget.username,
              backgroundColor:Colors.green ),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',
            backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),

          ],
         

    ),
    );
  }
}
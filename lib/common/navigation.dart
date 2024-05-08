import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
          backgroundColor: Colors.blue.shade300,
          selectedFontSize: 12,
          selectedItemColor: Colors.white,
          onTap: (value) {
            print('Selectes value:$value');
            if(value==0){
              //navigates to home
              Navigator.of(context).pushReplacementNamed('/home');

            }
            else if(value==1){
              //navigates to Search
              Navigator.of(context).pushReplacementNamed('/search');
            }
            else if(value==2){
              //navigates to Setting
              Navigator.of(context).pushReplacementNamed('/setting');
            }
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon:Icon (Icons.home),
              label: 'Home',
              backgroundColor:Colors.green ),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',
            backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),

          ],
         

    );
  }
}
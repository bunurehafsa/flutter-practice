import 'package:flutter/material.dart';
import 'package:test_2/Calculator.dart';
import 'package:test_2/figma.dart';
//import 'package:test_2/home.dart';
import 'package:test_2/images.dart';
//import 'package:test_2/images.dart';
import 'package:test_2/login.dart';
import 'package:test_2/main_screen.dart';
import 'package:test_2/search.dart';
import 'package:test_2/setting.dart';
//import 'package:test_2/profile.dart';
import 'package:test_2/signup.dart';
import 'package:test_2/simple_calculation.dart';
//import 'package:test_2/simple_calculation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const loginScreen(),
      initialRoute: '/login',
      routes: {
        '/login':(BuildContext context) => const loginScreen() ,
        '/signup':(BuildContext context) => const SignupScreen() ,
        //'/profile':(BuildContext context) => const ProfileScreen() ,
        '/home':(BuildContext context) => const MainScreen(
         username: '',
         email: '',) ,
        '/search':(BuildContext context) => const SearchScreen() ,
        '/setting':(BuildContext context) => const SettingScreen() ,
        '/simple_calculator':(BuildContext context) => const CalculatorScreen() ,
        '/calculator':(BuildContext context) => const CalculatorScreen2() ,
        '/images':(BuildContext context) => const ImagesAndButton() ,
        '/figma':(BuildContext context) => const FigmaScreen() ,


      } ,
    );
  }
}


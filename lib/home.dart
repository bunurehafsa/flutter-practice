import 'dart:developer';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//mport 'package:test_2/common/navigation.dart';

class HomeScreen extends StatefulWidget {
  final String? username;
  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading=false;
  String name='';
  List<dynamic>users=[];

  Future<String> getNameFromDtabase () async{
    await Future.delayed(Duration(seconds: 5));
    return 'BU CSE';
  }

 Future<void>getUsersFromDB () async{
  try{
  Uri uri=Uri.parse('https://jsonplaceholder.typicode.com/users');
  http.Response response= await http.get (uri);//post
  //print('status code ${response.statusCode}');
  List<dynamic> decoded =json.decode(response.body);
  inspect(decoded);
  setState(() {
    users =decoded;
    isLoading=false;

  });
  } catch (e){
    print('getting user error:${e.toString()}');
  }

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: ( Text('Home')),
        backgroundColor: Colors.blueGrey.shade300,
        
        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ListView(
              children: [ElevatedButton(
                onPressed: () async{
                  await getUsersFromDB();
               // setState(() {
                 // isLoading = true;
                //});
               // print('getting name');
                //String _name= await getNameFromDtabase();
                //setState(() {
                //  isLoading = false;
                 // name=_name;
                //});
             // print('name:$_name');
              }, 
              child: const Text('Get Name')),
              const SizedBox(
            
              ),
             const SizedBox(
             height: 30,
              ),
              if (isLoading)
              const CircularProgressIndicator(
                strokeWidth: 5,
                
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context,index){
                  return Text(users[index]['name']);
                },
              ),

              Text(name)
              ],
            
            
                ),
          ),
        ));
  }
}
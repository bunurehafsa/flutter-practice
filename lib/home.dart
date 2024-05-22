import 'dart:developer';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_2/models/User.dart';
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
  late Future<List<User>>futureUsers;
  List<User>users=[];
  @override
  void initState(){
    super.initState();
    futureUsers = getUsersFromDB();
  }

  Future<String> getNameFromDtabase () async{
    await Future.delayed(Duration(seconds: 5));
    return 'BU CSE';
  }

 Future<List<User>>getUsersFromDB () async{
  try{
  Uri uri=Uri.parse('https://jsonplaceholder.typicode.com/users');
  http.Response response= await http.get (uri);//post
  //print('status code ${response.statusCode}');
  List<dynamic> decoded =json.decode(response.body);
  List<User>tempUsers=[];
  for (var element in decoded) {
      User tempUser =User.fromJson(element);
      tempUsers.add(tempUser);
    }

  inspect(decoded);
  return tempUsers;
  // setState(() {
  //   users =tempUsers;
  //   isLoading=false;

 // });
  } catch (e){
    print('getting user error:${e.toString()}');
    return [];
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
              // ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: users.length,
              //   itemBuilder: (context,index){
              //     return Text(users[index].email);
              //   },
              // ),

              // Text(name)
              FutureBuilder(
                future: futureUsers, 
                builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child:CircularProgressIndicator(),
                  );
                }
                else if(snapshot.connectionState==ConnectionState.done){

                
                if(snapshot.hasData){
                  List<User>tempUsers =snapshot.data!;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: tempUsers.length,
                   itemBuilder: (context,index){
                    User user=tempUsers[index];
                   return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                     padding: const EdgeInsets.symmetric(
                      vertical: 10,horizontal: 20
                     ),
                     decoration: BoxDecoration(
                       border:Border.all(
                        color: Colors.purple,width: 1
                       ),
                       borderRadius: const BorderRadius.all(Radius.circular(20))),
                     
                      
                      child: Column(
                        children: [
                          Text('User Id:${user.id}'),
                          Text('Name:${user.username}'),
                          Text('Email:${user.email.toLowerCase()}'),
                          Text(
                            'Address:Streer-${user.address.street}City-${user.
                            address.city}Zip Code-${user.address.zipcode}'),
                        ],),
                     
                   );
                 },
                  );
                }
                if(snapshot.hasError){  
                  return Text(snapshot.error.toString());               
                }
                }
                 return Text(snapshot.data!.length.toString());
                
              },
              )
              ],                        
                ),
          ),
        ));
  }
}
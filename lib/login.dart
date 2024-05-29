import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_2/LoginUser.dart';
//import 'package:test_2/main_screen.dart';
import 'package:test_2/signup.dart';
import 'package:http/http.dart'as http;
import 'package:email_validator/email_validator.dart';
//import 'dart:developer';
import 'dart:convert';


class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  late String userName = '';
  late String email ='';
  late String password='';

  late String userNameError = '';

  Future<void> handleLoginPress() async{
    if(!EmailValidator.validate(email)){
      showDialog(
        context: context, 
        builder: (context){
          return AlertDialog(
            title:Text('Warning!!'),
            icon:Icon(Icons.warning),
            content:Container(
               child:Text('Invalid Email!! Please check your email'),),
          );
        },);
    }

    print('sending login request...');
    Uri uri=Uri.parse('https://task-management-backend-vhcq.onrender.com/api/v1/login');
    var payload={
      "email":email,
      "password":password,
    };
    http.Response response=await http.post(uri,body:payload);
    print("login status code:${response.statusCode}");
    print("login response body:${response.body}");//string
    dynamic decoded= json.decode(response.body);//map

    LoginUser loginUser= LoginUser.fromJson(decoded['data']);
    print(loginUser.email);
    print(loginUser.firstname);
    print(loginUser.lastname);

    print('token:${decoded['token']}');

  }
    
  // }
  //await
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar:AppBar(
              centerTitle:true ,
        backgroundColor:Colors.black12,
        title: const Text(
          "Login",
          style :TextStyle(color:Colors.black87),
  
        ),
        actions:[
          IconButton(onPressed: () {},
          icon:const Icon(
            Icons.favorite,
          color: Color.fromARGB(255, 82, 128, 255),
          ),
          )
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
             'Welcome',
              style: TextStyle(fontSize: 35),
            ),
            // TextFormField(
            //     style: TextStyle(fontSize: 16),
            //     onChanged: (value) {
            //       print('user name: $value');
            //       setState(() {
            //         userName = value;
            //         if (value.contains('@')) {
            //           userNameError = 'Dont use @';
            //         } else {
            //           userNameError = '';
            //         }
            //       });
            //     },
            //     decoration: InputDecoration(
            //         label: Text('User Name'),
            //         icon: Icon(Icons.person),
            //         hintText: 'Enter User Name',
            //         hintStyle: TextStyle(color: Colors.grey),
            //         errorText: userNameError.isEmpty ? null : userNameError)),
            TextFormField(
                style: TextStyle(fontSize: 16),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  print('Email: $value');
                 setState(() {
                   email = value;
                  });
                },
                decoration: const InputDecoration(
                   label: Text('Email'),
                   icon: Icon(Icons.email),
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    //errorText: userNameError.isEmpty ? null : userNameError
                    )
                    ),
            TextFormField(
                style: TextStyle(fontSize: 16),
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  print('password: $value');
                  setState(() {
                    password = value;
                  });
                },
                decoration: InputDecoration(
                    label: Text('Password'),
                    icon: Icon(Icons.key),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    //errorText: userNameError.isEmpty ? null : userNameError
                    )),
                    //--------
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        handleLoginPress();
                        //  showDialog(
                        //    context: context, 
                        //   builder: (context){
                        //     return AlertDialog(
                        //       title:Text('Warning!'),
                        //       icon:Icon(Icons.warning),
                        //      content:Container(
                        //         child: Text('Invalid Credentials'),)
                        //      );


                        //  },);
                        // String username='BU CSE';
                        // String email='nurehafsa399@gmail.com';
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context)=>
                        //       MainScreen(username: username, email: email)));
                      },
                      child:Text('Login'),
                      ),
                      SizedBox(
                        height: 20,

                      ),
                      Text('Dont Have an account?'),
                      SizedBox(
                        height: 10,

                      ),
                      ElevatedButton(onPressed: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                            builder: (context)=> const SignupScreen()));
                      }, child: Text('Try Signup'))
          ],
        ),
      ),
      
    );
  


  }
  Widget getInputRow({String? label,String?hint}){
    return Row(
      children: [
        Text(label.toString(),
        style:TextStyle(color:  Colors.black87),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          hint.toString(),
            style:TextStyle(color:  Colors.black38),
            )

      ],);
  }
}
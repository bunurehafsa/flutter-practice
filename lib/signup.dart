import 'package:flutter/material.dart';
//import 'package:test_2/home.dart';
import 'package:test_2/login.dart';
import 'package:test_2/main_screen.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late String userName = '';
  late String email;
  late String password;

  late String userNameError = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 35),
            ),
            TextFormField(
                style: TextStyle(fontSize: 16),
                onChanged: (value) {
                  print('user name: $value');
                  setState(() {
                    userName = value;
                    if (value.contains('@')) {
                      userNameError = 'Dont use @';
                    } else {
                      userNameError = '';
                    }
                  });
                },
                decoration: InputDecoration(
                    label: Text('User Name'),
                    icon: Icon(Icons.person),
                    hintText: 'Enter User Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    errorText: userNameError.isEmpty ? null : userNameError)),
            TextFormField(
                style: TextStyle(fontSize: 16),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  print('Email: $value');
                  setState(() {
                    email = value;
                  });
                },
                decoration: InputDecoration(
                    label: Text('Email'),
                    icon: Icon(Icons.email),
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    errorText: userNameError.isEmpty ? null : userNameError)),
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
                    errorText: userNameError.isEmpty ? null : userNameError)),
                    //--------
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //username
                        //email
                        String username='BU CSE';
                        String email='nurehafsa399@gmail.com';
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=>
                              MainScreen(username: username, email: email)));
                      },
                      child:Text('Sign Up'),
                      ),
                      SizedBox(
                        height: 30,

                      ),
                      Text('Already Have an account?'),
                      SizedBox(
                        height: 10,

                      ),
                    
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=> const loginScreen()));
                        }, child: Text('Try Login'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_2/main_screen.dart';
import 'package:test_2/signup.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  late String userName = '';
  late String email;
  late String password;

  late String userNameError = '';
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
           // Text(
             // 'Welcome',
             // style: TextStyle(fontSize: 35),
            //),
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
           // TextFormField(
              //  style: TextStyle(fontSize: 16),
               // keyboardType: TextInputType.emailAddress,
               // onChanged: (value) {
                //  print('Email: $value');
                //  setState(() {
                 //   email = value;
                 // });
               // },
                //decoration: InputDecoration(
                 //   label: Text('Email'),
                  //  icon: Icon(Icons.email),
                  //  hintText: 'Enter Email',
                  //  hintStyle: TextStyle(color: Colors.grey),
                   // errorText: userNameError.isEmpty ? null : userNameError)),
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
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String username='BU CSE';
                        String email='nurehafsa399@gmail.com';
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=>
                              MainScreen(username: username, email: email)));
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
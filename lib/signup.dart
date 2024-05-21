import 'package:flutter/material.dart';
//import 'package:test_2/home.dart';
import 'package:test_2/login.dart';
import 'package:test_2/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Interest{
  final String title;
  final int credit;
  Interest({required this.credit,required this.title});
}
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
  final List<Interest> _interests=[
    Interest(credit:3,title:"Programming"),
    Interest(credit:1,title:"Robotics"),
    Interest(credit:2,title:"Hacking",),
    Interest(credit:4,title:"Machine Learning"),
    Interest(credit:3,title:"Networking"),
    Interest(credit:2,title:"Cyber Security"),
  ];
  List<Interest> _selectedInterests=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Sign Up'),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Welcome',
                style: GoogleFonts.concertOne(
                  //textStyle:TextStyle(fontSize: 35),
                  fontSize:48,
                  fontStyle:FontStyle.italic,
                ),
              ),
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
                    MultiSelectDialogField(
                      buttonIcon: Icon(Icons.cast_for_education),
                      items: _interests.map((e) => MultiSelectItem(e, e.title)).toList(),
                      listType: MultiSelectListType.LIST,
                       onConfirm: (values) {
                          _selectedInterests = values;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:Text('${values.length} interest(s) are selected.') ,));
                    },

                    onSelectionChanged:(p0){
                      print('on selected change:${p0.length}');
                    },
                 ),
                 
                    
                    SizedBox(
                      height: 30,
                    ),
                    
                    ElevatedButton(
                      
                      style: ButtonStyle(
                        
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                        foregroundColor: MaterialStateProperty.all(Colors.deepPurple),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
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
                      Center(child: Text('Already Have an account?')),
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

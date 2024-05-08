import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 30,),
            Image.asset(
              'assets/me.png',
              width: 100,
              height: 100,
              //fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nure Hafsa Shefa",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 50, 109),
                        fontWeight: FontWeight.bold,fontSize: 15)),
                IconButton(
                 
                 icon: Icon(Icons.mode_edit_outlined),
                 iconSize: 20,
                 color: Colors.black45,
                  onPressed: () {},),

              ],
            ),
            Text("21 Years old",style: TextStyle(color: Colors.black38),),
            Text("Student",style: TextStyle(color: Colors.black38),),
            SizedBox(height: 10,),
            
            Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "Interests",
                  style: TextStyle(
                        color: Color.fromARGB(255, 8, 50, 109),
                        fontWeight: FontWeight.bold,fontSize: 20),
                )
              ],),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 16,),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    //color: Colors.blue,
                    padding: EdgeInsets.all(8),
                    child: Text("Education",
                    style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    //color: Colors.blue,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Technology",
                    style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    //color: Colors.blue,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Health",
                    style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                   // color: Colors.blue,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Cooking",
                    style: TextStyle(color:Colors.white),),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                 
                children: [
                  SizedBox(width: 16),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    //color: Colors.blue,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Painting",
                    style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    //color: Colors.blue,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Music",
                    style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    //color: Colors.blue,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Travel",
                    style: TextStyle(color:Colors.white),),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 33,
                    //color: Colors.blue,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.indigoAccent),
                    padding: EdgeInsets.all(8),
                    child: Text("Animals",
                    style: TextStyle(color:Colors.white),),
                  ),

                ],
              ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text("General",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 50, 109),
                        fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    children: [ 
                      SizedBox(width: 20),Text("Fullname ",style: TextStyle(color: Colors.black38)), 
                       SizedBox(width: 250,),
                       Text("Nure Hafsa Shefa ",style: TextStyle(color: Colors.black87)),],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 20),Text("Blood Group ",style: TextStyle(color: Colors.black38)), 
                       SizedBox(width: 330,),
                       Text("O+ ",style: TextStyle(color: Colors.black87)),
                       ],
                  ),
                  SizedBox(height: 5,),
                  Row(children: [
                    SizedBox(width: 20),Text("Email ",style: TextStyle(color: Colors.black38)), 
                       SizedBox(width: 220,),
                       Text("nurehafsa399@gmail.com ",style: TextStyle(color: Colors.black87)) ],),
                       SizedBox(height: 3,),
                  Row(
                    children: [
                      
                      SizedBox(width: 20),Text("Phone ",style: TextStyle(color: Colors.black38)), 
                       SizedBox(width: 310,),
                       Text("017******** ",style: TextStyle(color: Colors.black87)) ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                  children: [
                    SizedBox(width: 20),
                    Text("Additional",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 50, 109),
                        fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      
                      SizedBox(width: 20),Text("I am currently pursuing my studies in the field of Computer Science and \nEngineering (CSE) at University of Barishal. ",
                      style: TextStyle(color: Colors.black54,fontSize: 13)), 
                       
                        ],
                  ),
                  Row(children: [
                    SizedBox(width: 420,),
                    IconButton(
                    
              icon: Icon(Icons.add_circle_sharp),
              iconSize: 38.0,
              color: Colors.blue,
              onPressed: () {
                // Action to perform when the icon button is pressed
              },
            ),
                  ],),
                  
          ],
          
        )),
        
    );
  }
}
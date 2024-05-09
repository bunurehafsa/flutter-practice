import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: (Text('Simple Calculator'))),
        backgroundColor: Colors.blueGrey.shade300,),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                // color: Colors.black,
                height: 430,
                width: 350,
                padding: EdgeInsets.all(10),
                 margin: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  border: Border.all(color:Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 25,),
                    Container(
                     width: 300,
                     height: 90,
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:Colors.black54, width: 5),borderRadius: BorderRadius.all(Radius.circular(7))),

                    ),
                    SizedBox(height: 20,),
                    
                    
                  Row(children: [
                    SizedBox(width: 18,),
                     ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("7") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("8") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("9") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("/") ),
                     

                    ],
                    ),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 18,),
                     ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("4") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("5") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("6") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("*") ),
                      
                     

                    ],),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 18,),
                     ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("1") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("2") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("3") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("-") ),
                      
                     

                    ],),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 18,),
                     ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("0") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("Clr") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("=") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       ),
                      onPressed: ()=>(print( "onPressed") ),
                      onLongPress: ()=>(print( "longPressed") ), 
                      child:Text("+") ),
                      
                     

                    ],)
                  ],
                ),

                  
              ),
            ],),
        )
    );
  }
}
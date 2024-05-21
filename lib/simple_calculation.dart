import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output='';
  String _operator='';
  int input1=0;
  int input2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: Center(child: (Text('Simple Calculator'))),
        backgroundColor: Colors.blueGrey.shade100,),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 5,),
              Container(
                // color: Colors.black,
                height: 510,
                width: 320,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                     color:Colors.black,width: 3),
                     borderRadius: BorderRadius.all(
                       Radius.circular(20))),
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    SizedBox(height: 25,),
                    Container(
                     width: 300,
                     height: 90,
                     // padding: EdgeInsets.all(6),
                     // margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          //color:Colors.black54, width: 5
                          ),
                          //borderRadius: BorderRadius.all(Radius.circular(7))
                          ),
                          child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            _output,
                            style: TextStyle(fontSize: 30,color: Colors.white38),
                          ),
                        ),
                      ],
                    ),

                    ),
                    SizedBox(height: 30,),

                     Row(children: [
                    SizedBox(width: 20,),
                     ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Color.fromARGB(255, 97, 96, 96)),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                        onPressed: ()=> handleOperatorPress("Ac"),                     
                        child:Text('Ac',style :TextStyle(color:Colors.white30)) ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Color.fromARGB(255, 97, 96, 96)),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                        onPressed: (){
                          setState(() {
                            _output='';
                            _operator='';
                            input1=0;
                            input2=0;
                          });
                        },                     
                        child:Text('Del',style :TextStyle(color:Colors.white30)) ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style:ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                        backgroundColor: 
                           MaterialStateProperty.all(Color.fromARGB(255, 39, 38, 38)),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,color: Color.fromARGB(255, 77, 147, 218)) ,),
                        padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                        onPressed: ()=> handleOperatorPress("sin"),                     
                        child:Text('sin',style :TextStyle(color:Colors.blueAccent)) ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Colors.blue),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 14,vertical:20))),
                        onPressed: ()=> handleOperatorPress("*"),                     
                        child:Text('*',style :TextStyle(color:Colors.white30))),
                     

                    ],
                    ),
                   SizedBox(height: 15,), 
                  Row(children: [
                    SizedBox(width: 20,),
                     ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=> handleNumberPress(7),                     
                        child:Text("7") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=> handleNumberPress(8),                      
                        child:Text("8") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=>handleNumberPress(9),                      
                        child:Text("9") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Colors.blue.shade400),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                        onPressed: ()=> handleOperatorPress("-"),                     
                        child:Text('-',style :TextStyle(color:Colors.white30)) ),
                     

                    ],
                    ),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 20,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=>handleNumberPress(4),                      
                        child:Text("4") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=>handleNumberPress(5),                      
                        child:Text("5") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=>handleNumberPress(6),                      
                        child:Text("6") ),

                      SizedBox(width: 15,),
                      SizedBox(height: 55,),
                      ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Colors.blue.shade400),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                        onPressed: ()=> handleOperatorPress("+"),                     
                        child:Text('+',style :TextStyle(color:Colors.white30)) ),
                      
                     

                    ],),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 20,),
                     ElevatedButton(
                      style: buttonStyle,
                      onPressed: ()=>handleNumberPress(1),
                     
                      child:Text("1") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                      onPressed: ()=>handleNumberPress(2),
                     
                      child:Text("2") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                      onPressed: ()=> handleNumberPress(3),
                     
                      child:Text("3") ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Colors.blue.shade400),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                        onPressed: ()=> handleOperatorPress("/"),                     
                        child:Text('/',style :TextStyle(color:Colors.white30)) ),
                      
                      
                     

                    ],),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 20,),
                      ElevatedButton(
                        style:ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                        backgroundColor: 
                          MaterialStateProperty.all(Color.fromARGB(255, 22, 22, 22)),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 77, 147, 218)) ,),
                          padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 57,vertical:20))),
                        onPressed: ()=> handleNumberPress(0),                      
                        child:Text("0") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=> handleOperatorPress("."),  
                        child:Text(".") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style:ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:  MaterialStateProperty.all(Colors.blue.shade400),
                          textStyle: MaterialStateProperty.all(
                               TextStyle(fontSize: 20,color: Colors.white) ,),
                          padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 15,vertical:20))),
                                            
                        
                        onPressed: () {
                         print('input1:$input1');
                         print('input2:$input2');
                          double tempOutput =0;
                          if (_operator =='+'){
                            tempOutput =(input1+input2).toDouble();
                          }
                          else if (_operator =='-'){
                            tempOutput =(input1-input2).toDouble();
                          }
                          else if (_operator =='*'){
                            tempOutput =(input1*input2).toDouble();
                          }
                          else if (_operator =='/'){
                            tempOutput =(input1/input2).toDouble();
                          }
                          setState(() {
                             _output +=tempOutput.toString();
                          });

                        },                   
                        child:Text('  =',style :TextStyle(color:Colors.white30)) ),

                      
                    ],)
                  ],
                ),                 
              ),
            ],),
        )
    );
  }
  void handleNumberPress(int input){
  print('input:$input');
  setState((){
    _output +=input.toString();
    if(_operator.isEmpty){
      //input1
      input1=(input1*10)+input;
    }
    else{
      input2=(input2*10)+input;
    }
      });
}
void handleOperatorPress(String optr){
  setState((){
    _operator =optr;
    _output +=optr;
    print('output:$_output');
  });
}

  ButtonStyle buttonStyle=ButtonStyle(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)))),
      backgroundColor: 
          MaterialStateProperty.all(Color.fromARGB(255, 32, 32, 32)),
      textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent) ,),
      padding: MaterialStateProperty.all(
         EdgeInsets.symmetric(horizontal: 15,vertical:20)));
  
}
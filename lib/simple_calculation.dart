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
                  border: Border.all(
                    color:Colors.black,width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6))),
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
                        color: Colors.white,
                        border: Border.all(
                          color:Colors.black54, width: 5),
                          //borderRadius: BorderRadius.all(Radius.circular(7))
                          ),
                          child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            _output,
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),

                    ),
                    SizedBox(height: 20,),
                    
                    
                  Row(children: [
                    SizedBox(width: 18,),
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
                        style: buttonStyle,
                      onPressed: ()=>handleOperatorPress("/"),
                      
                      child:Text("/") ),
                     

                    ],
                    ),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 18,),
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
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=>handleOperatorPress('*'),                      
                        child:Text("*") ),
                      
                     

                    ],),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 18,),
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
                        style: buttonStyle,
                        onPressed: ()=> handleOperatorPress('-'),                     
                        child:Text("-") ),
                      
                     

                    ],),
                    SizedBox(height: 15,),
                    Row(children: [
                      SizedBox(width: 18,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=> handleNumberPress(0),                      
                        child:Text("0") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: (){
                          setState(() {
                            _output='';
                            _operator='';
                            input1=0;
                            input2=0;
                          });
                        },
                        child:Text("Clr") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                        onPressed: ()=> handleOperatorPress('='),                      
                        child:Text("=") ),

                      SizedBox(width: 15,),
                      ElevatedButton(
                        style: buttonStyle,
                      onPressed: ()=>handleOperatorPress('+'),
                      
                      child:Text("+") )
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
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: 
                        MaterialStateProperty.all(Colors.grey),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 20,vertical:15))
                       );
  
}
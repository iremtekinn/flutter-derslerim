import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:Padding(padding: EdgeInsets.only(left:15,right:15),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        SizedBox(height: 75),
        Text("Let's calculate",style:TextStyle(fontSize:30,color:Colors.grey[800], fontWeight:FontWeight.bold)),
        Text("your current BMI",style:TextStyle(fontSize:30,color:Colors.grey[800],fontWeight: FontWeight.bold)),
        SizedBox(height:35),
        Text("You can find out whether you are",style:TextStyle(fontSize:18,color:Colors.grey[700],fontWeight:FontWeight.w500)),
        Text("overweight, underweight or ideal weight.",style:TextStyle(fontSize:18,color:Colors.grey[700],fontWeight:FontWeight.w500)),
        SizedBox(height:30),
       Row(
        children: [
          Container(
            width:100,
            height:41,
            alignment: Alignment.center,
            
          child:Text("Female",style:TextStyle(color:Colors.black,
                        fontSize:12,)
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
          ),
          SizedBox(width:15),
          Container(
            width:100,
            height:41,
            alignment: Alignment.center,
            
          child:Text("Male",style:TextStyle(color:Colors.black,
                        fontSize:12,)
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
          ),
          SizedBox(width:15),
          Container(
            width:100,
            height:41,
            alignment: Alignment.center,
            
          child:Text("Other",style:TextStyle(color:Colors.black,
                        fontSize:12,)
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
          )

        ],)
       ],
      )
      )
    );
  }
}
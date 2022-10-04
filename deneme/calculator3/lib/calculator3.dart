import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int currentindex = 0;
   String result="";
  double height=0;
  double weight=0;
  TextEditingController heightController=TextEditingController();
  TextEditingController weightController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height:80),
                  Text("Let's calculate",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 30,
                          fontWeight: FontWeight.w600)),
                  Text("your current BMI",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 30,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 40),
                  Text("You can find out whether you are",
                      style: TextStyle(color: Colors.grey[700], fontSize: 16,fontWeight: FontWeight.w500
                      )),
                  Text("overweight, underweight or ideal weight.",
                      style: TextStyle(color: Colors.grey[700], fontSize: 16,fontWeight: FontWeight.w500)),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      radioButton("Female", Colors.grey.shade800, 0),
                      radioButton("Male", Colors.grey.shade800, 1),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                      keyboardType: TextInputType.number,
                      // controller:heightController,
                      //textAlign:TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Age",
                      )),
                  SizedBox(height: 20.0),
                  TextField(
                      keyboardType: TextInputType.number,
                       controller:heightController,
                      
                      decoration: InputDecoration(
                          hintText: "Height", suffixText: 'cm')),
                  SizedBox(height: 20.0),
                  TextField(
                      keyboardType: TextInputType.number,
                       controller:weightController,
                      //textAlign:TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Weight", suffixText: "kg")),
                  SizedBox(height: 20.0),
                  Container(
                    
                    width:double.infinity,
                    height:50.0,
                      child: TextButton(
                    onPressed: () {
                     if(!(weight > 40 && weight <250) ){
                      showDialog(
                        context: context, 
                        barrierDismissible: false,
                        builder: (context){
                          return AlertDialog(
                            title: new Text(
                              'Kilo:40-250 değerleri arasında olmalı'
                            ),
                             actions:<Widget>[
                                ElevatedButton(
                                  child: new Text("Ok"),
                                  onPressed: (() {
                                    Navigator.of(context).pop();
                                  }),)
                              ]
                          );
                        }
                        );
                     }
                     else if(!(height<100 && height <210)){
                      showDialog(
                        context: context, 
                        barrierDismissible: false,
                        builder: (context){
                          return AlertDialog(
                            title :new Text(
                              'Boy 100-200 değerleriarasında olmalı'
                              ),
                            actions:<Widget>[
                              ElevatedButton(
                                child: new Text("Ok"),
                                onPressed:(){
                                  Navigator.of(context).pop();
                                }
                              )
                            ]
                          );
                        }
                        );
                     }
                      setState(() {
                        height= double.parse(heightController.value.text);
                       weight= double.parse(weightController.value.text);
                      });
                       
                      calculateBmi(height,weight);
                    },
                    child:Text("Calculate BMI"),
                    style:TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      
                      )
                    
                  )
                  ),
                  SizedBox(height:20),
                  Container(
                      width:double.infinity,
                      child: Text(
                      "Your BMI is :",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        color: Colors.grey[800],
                        fontSize:30.0,
                        fontWeight: FontWeight.w600,
                      )
                    )
                    ),
                    SizedBox(height:50),
                    Container(
                      width:double.infinity,
                      child: Text(
                      "$result",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        color:Colors.green,
                        fontSize:40.0,
                        fontWeight: FontWeight.bold,
                      )
                    )
                    ),
                ],
              )),
        ));
  }
  void calculateBmi(double height,double weight){
    double finalresult=weight/(height*height/10000);//convert the cm to meter
    String bmi= finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            height: 50.0,
            child: TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(color: Colors.grey, ),
                backgroundColor:
                    currentindex == index ? color : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                changeIndex(index);
              },
              child: Text(value,
                  style: TextStyle(
                    color: currentindex == index ? Colors.white : color,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
            )));
  }
}
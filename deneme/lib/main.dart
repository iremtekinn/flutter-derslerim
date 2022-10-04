import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int sayi = 0;
  Color renk = Colors.red;
  Color renk2 =Colors.red;
  int animationTime=500;
  

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Timer.periodic (Duration(milliseconds:500),(timer){
      setState(() {
            //sayi = ++sayi;
            renk = Colors.primaries[Random().nextInt(Colors.primaries.length)];
            renk2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("emre"),
        backgroundColor:renk2,
      ),
      backgroundColor:renk,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            

            AnimatedContainer(
              duration:Duration(milliseconds: animationTime),
              curve:Curves.ease,
              width:100,
              height:100,
              alignment:Alignment.center,
              child: Text("$sayi"),
              decoration:BoxDecoration(
                color:renk,
                border:Border.all(color:Colors.white)
              ),
              
             // color:Colors.red,
            )
          ],
        ),
      ),
      
      floatingActionButton: Row(children: [
        FloatingActionButton(
        onPressed: () {
          setState(() {
            sayi = --sayi;
            animationTime=animationTime-500;
            //renk = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
      FloatingActionButton(
        onPressed: () {
          setState(() {
            sayi = ++sayi;
            animationTime=animationTime+500;
            renk = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      ],)
    );
  }
}

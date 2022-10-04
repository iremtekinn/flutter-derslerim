import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/photo11.png",
                  ),
                  Positioned(bottom: 180,left:150,child:Text("Spotify",style:TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w600)
                  ) 
                  ),
                  Container(
                    margin:EdgeInsets.only(top:650,left:30,right:10),
                    width:300,
                    height:100,
                    child: Positioned(bottom:180,left:80,
                    child:Text("A digital music,podcast,and video service that gives you access to millions of songs and other content fromcreators all over the world.",style: TextStyle(color:Colors.white),)),
                  ),
                  Positioned(
                    left:10,bottom:30,
                    child:TextButton(
                      onPressed: () {},
                        child:Container(
                          width:345,
                          height:58,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(31),
                            color:Color(0xff1ed760),
                          ),
                          padding:const EdgeInsets.symmetric(vertical:15,horizontal: 120),
                          child: const Text(
                            'Get Started',
                            style:TextStyle(color:Colors.white,fontSize:20),
                          )
                        )
                      
                    )
                  )
                 
              ]),
              ),
           
    )
    );
  }
}
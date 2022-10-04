import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
        Container(height: 800,width:800),
         Container(
          height:450,
          width:450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)),
           color: Color(0xff1ed760),),
         ),
         Positioned(left:100,top:100,child: Image.asset("assets/spotify.png")),
         Positioned(left:80,top:170,child: Image.asset("assets/stext.png")),
         Positioned(
          left:30,bottom:100,
           child: Container(
             height:445,
            width:342,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
             color: Colors.white,),
             child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
              children: [
                SizedBox(height: 15.0,),
Text("Login Account",style: TextStyle(fontSize:20,fontWeight:FontWeight.w600),),
              SizedBox(height: 5.0,),
 Container(
            height: 32,width: 260,
             child: TextFormField(
              
             obscureText: true,
             decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color:Color(0xff1ed760),
                    width: 1.0,
                  ),
                ),
               border: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(26),
                borderSide: BorderSide(width:3,color:Color(0xff1ed760)),
               ),
               labelText: 'Email or Username',
               labelStyle: TextStyle(color:Color(0xff1ed760),fontSize: 14),
               suffixIcon: Icon(Icons.mail_outline_outlined,color:Color(0xff1ed760),size:23)
             
             ),
             ),
           ),
Container(
            height: 32,width: 260,
             child: TextFormField(
              
             obscureText: true,
             decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color:Color(0xffdadada),
                    width: 1.0,
                  ),
                ),
               border: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(26),
                borderSide: BorderSide(width:3,color:Color(0xffdadada)),
               ),
               labelText: 'Password',
               labelStyle: TextStyle(color:Color(0xffdadada),fontSize: 14),
               suffixIcon: Icon(Icons.visibility_off_outlined,color:Color(0xffdadada),size:23)
             
             ),
             ),
           ),
           Row(
           children: [
            Padding(padding: EdgeInsets.only(left:40)),
             Text("Remember me",style:TextStyle(color:Color(0xffdadada)) ,),
             SizedBox(width:130),
             Icon(Icons.toggle_on_outlined  ,color:Color(0xff1ed760),size:30),
           ],
         ),
         TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 260,
                      height:45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(31),
                         color: Color(0xff1ed760),
                      ),
                     
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                         color:Color(0xffdadada),
                          height: 30,
                        )),
                  ),
                  Text("or",style:TextStyle(color:Color(0xffdadada))),
                  SizedBox(height:10),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          color:Color(0xffdadada),
                          height: 30,
                        )),
                  ),
                ]
                ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/photo13.png"),
                    SizedBox(width:20),
                    Image.asset("assets/photo14.png"),
                  ],
                ),
                  Text("Forget password?",style:TextStyle(color:Color(0xffdadada))),

              



              ],
             ),
             
           ),

           


         ),
          Positioned(left:60,bottom:50,child: Text("Don’t have an account?",style:TextStyle(color:Colors.white,fontSize: 15,fontWeight:FontWeight.w400 ,),)),
          Positioned(left:240,bottom:50,child: Text("Sign up now",style:TextStyle(color: Color(0xff1ed760),fontSize: 15,fontWeight:FontWeight.w400 ,),)),
        ],
      ),
    );
  }
}
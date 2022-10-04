import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List<String>playlist=[
    "assets/playlist1.png",
    "assets/playlist2.png",
    "assets/playlist3.png",
    "assets/playlist4.png",

  ];
  List<String>title=[
    "Playlist #1",
    "Playlist #2",
    "Playlist #3",
    "Playlist #4",
  ];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          
          padding: EdgeInsets.only(right: 15, left: 15),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              SizedBox(height:80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Library",style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                  SizedBox(width:20),
                  Container(
                    child: Image.asset("assets/search2.png"),
                  ),
                  Container(
                    child: Image.asset("assets/profile.png"),
                  ),
                ],
              ),
              SizedBox(height:10),
      
              Container(
                height: 410,
                width: 400,
                child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
                itemCount: playlist.length,itemBuilder: (context, index) {
                  return Container(
                    
                    padding: EdgeInsets.only(top:15),
                    height:181,
                    width:163,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xffD9D9D9).withOpacity(0.05),
                    ),
                    child:Column(
                      children: [
                        Image.asset(playlist[index]),
                        SizedBox(height: 10,),
                        Container(
                          child: Text(title[index],style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                          margin:EdgeInsets.only(left:25,top:8),
                          alignment: Alignment.bottomLeft,), 
                      ],
                    ) 
                  );
                },)
              ),
      
         Center(child: Text("See all",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 18,),textAlign:TextAlign.start ,),),
         Text("Your Activities",style: TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.w500),),
         SizedBox(
                  height: 10,
                ),
         Container(
          
          width: 343,
          height:150,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                 Image.asset("assets/heart.png"),
                 Text("Liked Songs",style: TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.w300),textAlign: TextAlign.left,),
                 
                 Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white)
                ],
              ),
               Divider(
                  thickness: 0.1,
                  color: Colors.white30,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset("assets/people.png"),
                 Text("Followed Songs",style: TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.w300),textAlign: TextAlign.left,),
                
                 Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,)
                ],
              ),
               Divider(
                  thickness: 0.1,
                  color: Colors.white30,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset("assets/mic.png"),
                 Text("Followed Podcast",style: TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.w300),textAlign: TextAlign.left,),
                 
                 Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white)
                ],
              ),
               Divider(
                  thickness: 0.1,
                  color: Colors.white30,
                ),
            ],
          ),
         ),
       BottomNavigationBar(
                  backgroundColor: Colors.black,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  color: Colors.white,
                  AssetImage("assets/home.png")
                  ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  color:Colors.white ,
                  AssetImage("assets/search.png")
                  ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  ImageIcon(
                  color: Colors.green,
                  AssetImage("assets/threeline.png")
                ),
                label: '',
              ),
            ],
            
              )
      
            ],
          ),
        ),
      ),
    );
  }
}
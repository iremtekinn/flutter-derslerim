import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  @override
  List<String>list=[
    "assets/photo1.png",
    "assets/photo2.png",
    "assets/photo3.png",
    "assets/photo4.png",
  ];
  List<String>songs=[
    "STAY",
    "Wishing Well",
    "First Class",
    "Unstable",
  ];
  List<String>artist=[
    "The Kıd LARQI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kıd LARQI",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
      child:Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(height:420),
              Container(child: Image.asset("assets/theweekend.png",fit:BoxFit.cover )),
              Positioned(left: 10,top: 50,
              child:Icon(Icons.arrow_back_ios_outlined,color:Colors.white,)
              ),
              Positioned(
              right:50,top:50,
              child:Icon(Icons.favorite,color:Colors.white,)
              ),
              Positioned(
                right:20,top:50,
                child:Icon(Icons.more_vert_rounded,color:Colors.white,)
              ),
              Positioned(
                left:40,bottom:130,
                child:Image.asset("assets/today.png")
                ),
                Positioned(
                left:40,bottom:80,
                child:Image.asset("assets/tophits.png")
                ),
                Positioned(
                left:30,bottom:50,
                child:Image.asset("assets/fav.png")
                ),
                Positioned(
                left:50,bottom:50,
                child:Image.asset("assets/likes.png")
                ),
                Positioned(
                left:170,bottom:50,
                child:Image.asset("assets/clock.png")
                ),
                Positioned(
                left:190,bottom:50,
                child:Image.asset("assets/hours.png")
                ),
                Positioned(
                left:310,bottom:10,
                child:Image.asset("assets/play.png")
                )


              
            ],
          ),
          Padding(padding:EdgeInsets.only(left:15,right:15,),
          child:Text("Featuring",style:TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.w500))
          ),
          Container(
            width:500,
            height:500,
            child:ListView.builder(scrollDirection: Axis.vertical,itemCount: list.length,itemBuilder: ((context, index) {
              return Container(
                padding:EdgeInsets.only(bottom:10),
                width:500,height:80,color:Colors.black,
                child:Stack(
                  children: [
                    Image.asset(list[index]),
                    Positioned(left:30,top:30,child:Image.asset(index==2?"assets/stop.png":"assets/play1.png")),
                    Positioned(left:80,top:20,child:Text(songs[index],style:TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w300),)),
                    Positioned(left:80,top:40,child:Text(artist[index],style:TextStyle(color:Colors.white,fontSize:10,fontWeight: FontWeight.w300),)),
                    Positioned(right:50,top:20,child:Icon(Icons.favorite_border,color:Colors.white,)),
                    Positioned(right:2,top:20,child:Icon(Icons.more_vert_rounded,color:Colors.white) )
                  ],
                )
              );
              
            }),)
          )
        ],
      ),
      )
    );
  }
}
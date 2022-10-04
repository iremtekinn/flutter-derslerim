import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
   double _currentSliderValue = 20;
  List<String> homephotos = [
    "assets/photo5.png",
    "assets/photo6.png",
    "assets/photo7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 100),
                  Icon(Icons.keyboard_arrow_down_outlined,
                      color: Colors.white, size: 40),
                  Text(
                    "Today's Top Hits ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                height: 300,
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: ListView.builder(
                  itemCount: homephotos.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Row(children: [
                      Image.asset(homephotos[index]),
                    ]);
                  }),
                ),
              ),
              Container(
                child:
                    Text("First Class", style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w900)),
              ),
              Container(
                  child: Text("Jack Harlow",
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)
                      )

                      ),
                     Slider(
                      activeColor: Colors.green,
                      inactiveColor: Colors.white,
                      thumbColor: Colors.white,
      value: _currentSliderValue,
      max: 100,
      
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    ),
    Container(
      margin:EdgeInsets.only(left:15,right:15),
      child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Text("0.22",style:TextStyle(color:Colors.white)),
          Text("2.53",style:TextStyle(color:Colors.white)),

      ],)
    ),
    Container(
      child:Image.asset("assets/photo8.png")
    ),
    SizedBox(height:30),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
          Image.asset("assets/photo9.png"),
          SizedBox(width:15),
          Text("Airpods Pro",style:TextStyle(color:Colors.grey,fontWeight: FontWeight.w500,fontSize: 18))
    ],
    ),
    SizedBox(height: 60),
    Container(
      child:Image.asset("assets/photo10.png"),
    )
            ],
          )
          ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> musiclist = ["assets/discover.png", "assets/pinkimage.png"];
  List<String> mixsubtitle = [
    "30 fresh music for you every week",
    "New songs",
  ];
  List musiclist2 = [
    "assets/hiphopmix.png",
    "assets/moodymix.png",
    "assets/photo19.png"
  ];
  List<String> mixsubtitle2 = [
    "Hip Hop Mix",
    "Moody Mix",
    "House Mix",
  ];
  List<String> mixsubtitle3 = [
    "Juice Wrld,Drake,Kendrick Iamar and more...",
    "Joji,The Kid LARDI,Tate McRae and more...",
    "Martin Garrix, The Chainsmoker and more..."
  ];
  List<String> verticalimage = [
    "assets/Rectangle 11.png",
    "assets/Rectangle 13.png",
    "assets/Rectangle 15.png"
  ];
  List<String> horizontalimage = [
    "assets/Rectangle 12.png",
    "assets/Rectangle 14.png",
    "assets/Rectangle 16.png"
  ];
  List<String> artists = ["assets/sarkıcı.png", "assets/sarkıcı2.png"];
  List<String> names = ["The Kid LAROI", "Taylor Swift"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  ImageIcon(color: Colors.green, AssetImage("assets/home.png")),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  color: Colors.white, AssetImage("assets/search.png")),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    color: Colors.white, AssetImage("assets/threeline.png")),
                label: "")
          ]),
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.more_horiz, color: Colors.green),
                  SizedBox(width: 10),
                  Text(
                    "Weekly",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Music",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                      height: 130,
                      child: ListView.builder(
                        itemCount: musiclist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 230,
                                height: 100,
                                child: Image.asset(musiclist[index]),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              //Text("data",style: TextStyle(color: Colors.white),)
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                mixsubtitle[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              //Text(mixsubtitle[index],style:TextStyle(color: Colors.white,fontSize: 10),),
                            ],
                          );
                        },
                      ))
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "Your Top Mixes",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: musiclist2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        print(musiclist2[index]);
                        return Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(musiclist2[index]),
                                Positioned(
                                    bottom: 0,
                                    child: Image.asset(horizontalimage[index])),
                                Positioned(
                                    bottom: 20,
                                    child: Image.asset(verticalimage[index])),
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  width: 125,
                                  height: 113,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              mixsubtitle2[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                                width: 120,
                                child: Text(
                                  mixsubtitle3[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ))
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Suggested artist",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    height: 180,
                    child: ListView.builder(
                      itemCount: artists.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 195,
                          width: 155,
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(artists[index]),
                                margin: EdgeInsets.only(top: 10),
                              ),
                              Text(names[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spotify_ui2/category.dart';
import 'package:spotify_ui2/home.dart';
import 'package:spotify_ui2/library.dart';
import 'package:spotify_ui2/login.dart';
import 'package:spotify_ui2/music.dart';
import 'package:spotify_ui2/splash.dart';
import 'package:spotify_ui2/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: MyHomePage(title: " "),
     // home:HomeScreen(),
      home:Library(),
    // home:MyCategory(),
   // home:Music(),
    
    //home:Start(),
    //home:Splash()
   // home:Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  List<String>searchlist=[
    "assets/photo17.png",
    "assets/photo16.png",
    "assets/photo18.png",
    
    
  ];
   List<String>list=[
    "Impaulsive",
    "Ted Talks Daily",
    "Mom's Basement",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    const Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade900,
                  ),
                  height: 50,
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(children: [
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    const Expanded(
                        child: TextField(
                      decoration:
                          InputDecoration(labelText: 'Artist,songs,or podcasts'),
                    ))
                  ]),
                  padding: const EdgeInsets.only(left: 20),
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 13, left: 24, right: 6),
                            width: 98,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'The Kid LAROI',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                            width: 69,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'Drake',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                            width: 106,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'Justin Bieber',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                            width: 39,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'Joji',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 13, left: 24, right: 6),
                            width: 106,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'Hip Hop',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                            width: 106,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'Pop',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                            width: 106,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: const Text(
                              'Top-Hits',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: Row(children: [
                    const Text(
                      "Podcast's",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    )
                  ]),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                  
                                
                    itemCount:searchlist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Container(
                        
                        margin: const EdgeInsets.only(top: 10,right:10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff0e0e0f),
                        ),
                        padding: const EdgeInsets.only(top: 20),
                        width: 155,
                        height: 280,
                        child: Column(children: [
                          Image.asset(searchlist[index]),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width,
                            child:  Text(
                              list[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              '334 ep.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      );
                    }),
                  ),
                ),
                
                Container(
                 // height:20,
                  margin: const EdgeInsets.only(top: 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Browse all",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                   child:ListView.builder(itemCount: 1,physics: const NeverScrollableScrollPhysics(),shrinkWrap: true,scrollDirection: Axis.vertical,itemBuilder: ((context, index) {
                     return  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top:10 ),
                            padding:const EdgeInsets.only(top:10,left:10) ,
                            width: 162,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  
                              colors: <Color>[
                                Color.fromARGB(223, 221, 10, 186),
                                Color.fromARGB(253, 12, 241, 165),
                              ],
                            ),),
                            child: const Text('Made For You',style:TextStyle(color: Colors.white,fontSize: 15,
                                      fontWeight: FontWeight.w500,), ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:10,left:30 ),
                            padding:const EdgeInsets.only(top:10,left:10) ,
                            width: 162,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  
                              colors: <Color>[
                                Color.fromARGB(255, 10, 43, 230),
                                Color.fromARGB(255, 21, 223, 189),
                              ],
                            ),),
                            child: const Text('Charts',style:TextStyle(color: Colors.white,fontSize: 15,
                                      fontWeight: FontWeight.w500,), ),
                          ),
                         
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top:10 ),
                            padding:const EdgeInsets.only(top:10,left:10) ,
                            width: 162,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  
                              colors: <Color>[
                              Color.fromARGB(226, 42, 6, 206),
                                Color.fromARGB(255, 217, 221, 1),
                              ],
                            ),),
                            child: const Text('Discover',style:TextStyle(color: Colors.white,fontSize: 15,
                                      fontWeight: FontWeight.w500,), ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:10,left:30 ),
                            padding:const EdgeInsets.only(top:10,left:10) ,
                            width: 162,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  
                              colors: <Color>[
                                Color.fromARGB(255, 2, 69, 252),
                                Color.fromARGB(192, 241, 7, 7),
                              ],
                            ),),
                            child: const Text('New Release',style:TextStyle(color: Colors.white,fontSize: 15,
                                      fontWeight: FontWeight.w500,), ),
                          ),
                         
                        ],
                        
                      )
                      
                    ],
                  );
                
                   }))
                  
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
                color: Colors.white,
                AssetImage("assets/threeline.png")
              ),
              label: '',
            ),
                  ],
          
            )],
            ),
          ),
        ));
  }
}

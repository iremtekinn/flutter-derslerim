import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.grey.shade900),
              height: 50,
              //color: Colors.grey,
              margin: EdgeInsets.only(top: 20),
              child: Row(children: [
                Icon(Icons.search, color: Colors.white, size: 30),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(labelText: 'Artist'),
                ))
              ]),
              padding: EdgeInsets.only(left: 10),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "The Kid Lardi",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Drake",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Justin Bieber",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Joji",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Hip Hop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Pop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Top-Hits",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text(
                    "Podcast's",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              height: 195,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        width: 155,
                        height: 195,
                        child: Column(
                          children: [
                            Image.asset("assets/img.png"),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Impaulsive",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "334 ep",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        padding: EdgeInsets.only(top: 10, left: 10),
                        width: 155,
                        height: 195,
                        child: Column(
                          children: [
                            Image.asset("assets/img2.png"),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Impaulsive",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "334 ep",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        padding: EdgeInsets.only(top: 10),
                        width: 155,
                        height: 195,
                        child: Column(
                          children: [
                            Image.asset("assets/img.png"),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Impaulsive",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "334 ep",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text(
                    "Browse all",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),





          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

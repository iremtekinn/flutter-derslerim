import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String>Banner=[
    "assets/photo1.png",
    "assets/photo2.png",
    //"assets/banner3.png",
  ];
    List<String>Category=[
    "assets/Apparel.png",
    "assets/school.png",
    "assets/sports.png",
    "assets/electronic.png",
    "assets/all.png",
  ];
  List<String>Texts=[
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All",
  ];
  List<String>list=[
    "assets/photo3.png",
    "assets/photo4.png",
    "assets/photo5.png",
    "assets/photo6.png",
  ];
  List<String>list2=[
    "Monitor LG 22'inc 4K...",
    "Aestechic Mug-white...",
    "Airpods pro",
    "Playstation 4 -SSD 128..."
  ];
  List<String>list3=[
    "\$199,99",
    "\$19.99",
    "\$499.99",
    "\$1999.99",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 40),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery address",
                      style: TextStyle(color: Color(0xffc8c8cb), fontSize: 10),
                    ),
                    Row(
                      children: [
                        Text(
                          "Salatiga City,Central Java",
                          style:
                              TextStyle(color: Color(0xff393f42), fontSize: 12),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xff200e32),
                        ),
                        SizedBox(width: 130),
                        Stack(
                          children: [
                            ImageIcon(
                                size: 28,
                                AssetImage(
                                  "assets/shopping.png",
                                )),
                            Positioned(
                              left: 17,
                              child: ImageIcon(
                                  color: Colors.red,
                                  size: 11.5,
                                  AssetImage(
                                    "assets/notification.png",
                                  )),
                            ),
                            Positioned(
                              left: 17,
                              child: ImageIcon(
                                  color: Colors.white,
                                  size: 11.5,
                                  AssetImage(
                                    "assets/number.png",
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                            size: 28, AssetImage("assets/notification.png")),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height:10,
            ),
        
            Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffF0F2F1))
              ),
              child:TextFormField(
                decoration: InputDecoration(
                  enabled: false,
                  prefixIcon: Icon(Icons.search_rounded,color:Color(0xff939393),size: 20,),
                  labelText: "Search here...",
                  labelStyle: TextStyle(
                    color:Color(0xffC8C8CB),
                  ),
                ),
              ),
            ),
            SizedBox(
              height:10,
            ),
            Container(
              width:390,
              height:163,
              child:ListView.builder(scrollDirection: Axis.horizontal,itemCount: Banner.length,itemBuilder: ((context, index) {
                return Row(
                  children: [
                    Container(
                      width:304,
                      height:144,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(Banner[index]),
                    ),
                  ],
        
                );
              }))
             
            ),
            Container(
              width: 350,
              height:17,
              child: Text("Category",style:TextStyle(color:Color(0xff393F42),fontSize: 14),),
            ),
            Container(
              width:349,
              height:61,
              margin:EdgeInsets.only(top:10),
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Category.length,
                itemBuilder: ((context, index) {
                  return Container(
                    margin:EdgeInsets.only(
                      right:16,
                      ),
                      width:57,
                      height:61,
                      child:Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(Category[index]),
                              Text(
                                Texts[index],
                                style:TextStyle(
                                  color:Color(0xff939393),fontSize:12
                                ),
                              )
                            ],
                          )
                        ],)
                  );
                
              }))
        
            ),
            SizedBox(height:10),
            Row(
              children: [
            Text("Recent product",style:TextStyle(color:Color(0xff393F42),fontSize: 14)),
            SizedBox(width:190),
            Text("Filters",style: TextStyle(color:Color(0xff393F42),fontSize: 12),),
            SizedBox(width:10),
            Icon(Icons.filter_alt_outlined,color: Color(0xff393F42),size: 12,)
            ],
            ),
            Container(width:349,
            height:352,
             child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.6),crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
             itemCount:list.length , itemBuilder: ((context, index) {
               return Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Color(0xffFAFAFC)
                ),
                child:Column(
                  children: [
                    Image.asset(list[index]),
                    Container(alignment: Alignment.bottomLeft,
                      child:Text(list2[index],)
        
                    ),
                    Container(alignment:Alignment.bottomLeft,
                      child:Text(list3[index]),
                    ),
                    TextButton(onPressed: (){},
                    child:Container(
                      alignment: Alignment.center,
                      width:144,
                      height:31,
                      child:Text('Add to cart',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      )
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color:Color(0xff67C4A7)
                      ),
                      ) 
                      )
                  ],)
               );
               
             }), )
              )
            ]
            ),
        )
          
          
       
  
       
       
    ),
    bottomNavigationBar: BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      items:const<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border) ,
            label:'Wishlist',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined) ,
            label:'History',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_outline) ,
            label:'Account',
            )
      ]
    ),
    );
  }
}

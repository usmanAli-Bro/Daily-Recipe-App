import 'dart:ui';

import 'package:daily_receip/screen/drawer.dart';
import 'package:daily_receip/screen/itemDetail.dart';
import 'package:daily_receip/screen/login.dart';
import 'package:daily_receip/screen/notificationAction.dart';
import 'package:daily_receip/screen/notifications.dart';
import 'package:daily_receip/widgets/bottomDemo.dart';
import 'package:daily_receip/widgets/bottomsheet1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:animated_drawer/views/animated_drawer.dart';

class AppHome extends StatefulWidget {
  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // double xoffset = 0;
  // double yoffset = 0;
//  bool isdraweropen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        // transform: Matrix4.translationValues(xoffset, yoffset, 0)
        //   ..scale(isdraweropen ? 0.85 : 1.00)
        //   ..rotateZ(isdraweropen ? -50 : 0),
        duration: Duration(seconds: 1),
        child: GestureDetector(
          onTap: () {
            setState(() {
              // isdraweropen = true;
            });

            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Scaffold(
            appBar: AppBar(
              // iconTheme: IconThemeData(color: Colors.grey),
              backgroundColor: Colors.white,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationAction()),
                            (route) => false);
                      },
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.grey,
                        //color: Colors.grey,
                      )),
                ],
              ),
              // leading: IconButton(
              //   onPressed: () {
              //     setState(() {
              //       //isdraweropen = !isdraweropen;
              //     });
              //   },
              //   icon: IconButton(
              //     onPressed: () {
              //       // starting animations drawers
              //       // AnimatedDrawer(
              //       //   homePageXValue: 150,
              //       //   homePageYValue: 80,
              //       //   homePageAngle: -0.2,
              //       //   homePageSpeed: 250,
              //       //   shadowXValue: 122,
              //       //   shadowYValue: 110,
              //       //   shadowAngle: -0.275,
              //       //   shadowSpeed: 550,
              //       //   shadowColor: Color(0xFF4c41a3),
              //       //   backgroundGradient: LinearGradient(
              //       //     colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
              //       //   ),
              //       //   menuPageContent: MyDrawer(),
              //       //   homePageContent: AppHome(),
              //       // );
              //     },
              //     // icon: Icon(
              //     //   Icons.menu,
              //     //   color: Colors.grey,
              //     // ),
              //   ),
              //   // color: Colors.grey,
              // ),
            ),
            body: MyHome(),
          ),
        )
        // : GestureDetector(
        //     onTap: () {
        //       setState(() {
        //         // xoffset = 0;
        //         // yoffset = 0;
        //         isdraweropen = false;
        //       });

        //       FocusScope.of(context).requestFocus(FocusNode());
        //     },
        //     child: Scaffold(
        //       appBar: AppBar(
        //         backgroundColor: Colors.transparent,
        //         elevation: 0,
        //         title: Row(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: [
        //             IconButton(
        //                 onPressed: () {},
        //                 icon: Icon(
        //                   Icons.notifications_active_outlined,
        //                   color: Colors.grey,
        //                 )),
        //           ],
        //         ),
        //         leading: IconButton(
        //           onPressed: () {
        //             setState(() {
        //               isdraweropen = !isdraweropen;
        //             });
        //           },
        //           icon: Icon(isdraweropen ? Icons.menu : Icons.arrow_back),
        //           color: Colors.grey,
        //         ),
        //       ),
        //       body: MyHome(),
        //     ),
        //   ),
        );
  }
}

class MyHome extends StatelessWidget {
  final List myproducts = [
    {
      "id": "1",
      "img": "assets/images/newitem1.png",
      "title": "Breakfast",
      "name": "French Toast with",
      "sname": "Berries",
      "calories": "120 Calories",
      "times": "10 mins",
      "serve": "1 Servng"
    },
    {
      "id": "2",
      "img": "assets/images/newitem2.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "id": "3",
      "img": "assets/images/newitem1.png",
      "title": "Breakfast",
      "name": "Pak Burger",
      "sname": "Chima Chowk",
      "calories": "138 Calories",
      "times": "17 mins",
      "serve": "4 Servng"
    },
    {
      "id": "4",
      "img": "assets/images/newitem2.png",
      "title": "Breakfast",
      "name": "Pak Samosay",
      "sname": "Chacha Samosay",
      "calories": "139 Calories",
      "times": "12 mins",
      "serve": "2 Servng"
    },
  ];
  final List product2 = [
    {
      "img": "assets/images/item1.png",
      "name": "Breakfast",
      "title": "BlueBerry Muffins",
      "calories": "120 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item2.png",
      "name": "Brown Sugar",
      "title": "Glazed Salmon",
      "calories": "130 Calories",
      "times": "18 mins",
      "serve": "2 Servng"
    },
    {
      "img": "assets/images/item3.png",
      "name": "Brown Sugar",
      "title": "Asian Glazed Chiken Things",
      "calories": "130 Calories",
      "times": "25 mins",
      "serve": "3 Servng"
    },
    {
      "img": "assets/images/item1.png",
      "name": "Brown Sugar",
      "title": "Asian Glazed Chiken Things",
      "calories": "130 Calories",
      "times": "30 mins",
      "serve": "6 Servng"
    },
  ];
  // const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   child: Column(
              //     children: [],
              //   ),
              // ),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bonjour,Emma",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "What would you like to cook",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "today?",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30)),
                        child: Form(
                            child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Colors.grey,
                                  //labelText: "Search for receive",
                                  hintText: "Search for receive",
                                  prefixIcon: Icon(Icons.search)),
                            )
                          ],
                        )),
                      ),
                    ),
                    // IconButton(onPressed: (){}, icon: Icon(Icons.tune_sharp))
                    //  ElevatedButton(onPressed: (){},
                    //  child: Icon(Icons.tune_sharp,color: Colors.black,),
                    //  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),),)
                    SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => DemoBottomSheet());
                      }, //ending bottom sheet
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.tune_sharp),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Fresh Recipes",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.red),
                    ),

                    //SizedBox(height: 10,)
                  ],
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(myproducts.length, (index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemDetail(
                                        foodDetail: myproducts[index],
                                      )));
                        },
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.all(9.0),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 45.0),
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    height: 70.0,
                                  ),
                                  // Hero(
                                  //     tag: Key(myproducts[index]["id"]),
                                  //     child: Image.asset(
                                  //       myproducts[index]["img"],
                                  //       width: 150,
                                  //       height: 80,
                                  //     )),
                                  Text(
                                    myproducts[index]["title"],
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.blue),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    myproducts[index]["name"],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  // Text(
                                  //   "Berries",
                                  //   style: TextStyle(
                                  //       fontSize: 12,
                                  //       color: Colors.black,
                                  //       fontWeight: FontWeight.bold),
                                  // ),

                                  //alignment: CrossAxisAlignment.start,
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    itemSize: 15.0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    //  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    myproducts[index]["calories"],
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        size: 15,
                                      ),
                                      Text(
                                        myproducts[index]["times"],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      // Spacer(
                                      //   flex: 1,
                                      // ),
                                      Icon(
                                        Icons.room_service_outlined,
                                        size: 15,
                                      ),
                                      Text(
                                        myproducts[index]["serve"],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            //image container
                            Positioned(
                              top: 20.0,
                              right: 0,
                              width: 170.0,
                              child: Hero(
                                  tag: Key(myproducts[index]["id"]),
                                  child: Image.asset(myproducts[index]["img"])),
                            )
                          ],
                        ));
                  }),
                ),
                // upper product ending
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Recommanded",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.red),
                    ),

                    //SizedBox(height: 10,)
                  ],
                ),
              ),
              //Row(children: [],)
              /// designing lower product list
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: List.generate(myproducts.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(top: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          //product image
                          Container(
                            child: Image.asset(
                              myproducts[index]["img"],
                              width: 100,
                              height: 100,
                            ),
                          ),
//product detail

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Spacer(flex: 2,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      myproducts[index]["title"],
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),

                                Text(
                                  myproducts[index]["name"],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                //Text("Berries",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    //showing rating
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15.0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      //  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      myproducts[index]["calories"],
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      myproducts[index]["times"],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 9),
                                    ),
                                    //  Spacer(flex: 1,),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(
                                      Icons.room_service_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      myproducts[index]["serve"],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 9),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsetsDirectional.only(bottom: 40.0),
                              child: IconButton(
                                  alignment: Alignment.topRight,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ))),
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

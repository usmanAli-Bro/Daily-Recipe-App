import 'package:daily_receip/screen/drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_drawer/views/animated_drawer.dart';

class MyViewediteItem extends StatefulWidget {
  final itemColor;
  MyViewediteItem({@required this.itemColor});

  @override
  State<MyViewediteItem> createState() => _MyViewediteItemState();
}

class _MyViewediteItemState extends State<MyViewediteItem> {
  bool _presed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              setState(() {
                _presed = true;
              });
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedDrawer(
                            homePageXValue: 150,
                            homePageYValue: 80,
                            homePageAngle: -0.2,
                            homePageSpeed: 250,
                            shadowXValue: 122,
                            shadowYValue: 110,
                            shadowAngle: -0.275,
                            shadowSpeed: 550,
                            openIcon: Icon(Icons.menu_open,
                                color: Colors.transparent),
                            closeIcon:
                                Icon(Icons.arrow_back_ios, color: Colors.white),
                            shadowColor: Color(0xFF4c41a3),
                            backgroundGradient: LinearGradient(
                              colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                            ),
                            menuPageContent: MyDrawer(),
                            homePageContent: MyViewediteItem(),
                          )),
                  (route) => false);
            },
            icon: Icon(
              _presed ? Icons.arrow_back : Icons.menu,
              color: _presed ? Colors.white : Colors.black,
              //_presed ? Colors.black : Colors.grey
            )),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.menu,
            //       color: Colors.black,
            //     )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.grey,
                )),
          ],
        ),
      ),
      body: ViewedItemDetail(),
    );
  }
}

class ViewedItemDetail extends StatefulWidget {
  const ViewedItemDetail({Key key}) : super(key: key);

  @override
  State<ViewedItemDetail> createState() => _ViewedItemDetailState();
}

class _ViewedItemDetailState extends State<ViewedItemDetail> {
  @override
  Widget build(BuildContext context) {
    bool _presed = false;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            //displaying title for recommanded
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently Viewed",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Clear",
                  style: TextStyle(color: Colors.red),
                ),

                //SizedBox(height: 10,)
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
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
                  onTap: () {}, //ending bottom sheet
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
            SizedBox(
              height: 10.0,
            ),

            /// displaying Product List
            ViewedProductLists()
          ],
        ),
      ),
    );
  }
}

class ViewedProductLists extends StatelessWidget {
  // const ProductLists({Key? key}) : super(key: key);
  final List myproducts = [
    {
      "img": "assets/images/item1.png",
      "title": "Breakfast",
      "name": "French Toast with",
      "sname": "Berries",
      "calories": "120 Calories",
      "times": "10 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item3.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item2.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item1.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item1.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item3.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item2.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
    {
      "img": "assets/images/item1.png",
      "title": "Breakfast",
      "name": "Brown Sugar",
      "sname": "Cinnamon Toast",
      "calories": "135 Calories",
      "times": "15 mins",
      "serve": "1 Servng"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            myproducts.length,
            (index) => (Container(
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
                          // color: Colors.grey[200],
                        ),
                      ),
//product detail

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ))));
  }
}

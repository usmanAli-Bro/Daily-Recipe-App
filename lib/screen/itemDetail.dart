import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemDetail extends StatefulWidget {
  final foodDetail;
  //final foodDetail2;
  const ItemDetail({Key key, this.foodDetail}) : super(key: key);

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none, color: Colors.grey))
          ],
        ),
        // leading: Icon(
        //   Icons.arrow_back,
        //   color: Colors.black,
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 10.0, top: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      widget.foodDetail["title"],
                      style: TextStyle(color: Colors.blue, fontSize: 13),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.foodDetail["name"],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        widget.foodDetail["calories"],
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        //  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.grey,
                                  )),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                widget.foodDetail["times"],
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.room_service_outlined,
                                    color: Colors.grey,
                                  )),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "1 Serving",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 20,
                        ),
                      ),
                      Container(
                        child: Hero(
                          tag: Key(widget.foodDetail["id"]),
                          child: Image.asset(
                            widget.foodDetail["img"],
                            width: 200,
                            // height: 200,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Ingrediants",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/item2.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/item3.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/item1.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/item5.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/item6.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/item7.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/item8.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          "assets/images/Butter.png",
                          width: 60.0,
                          height: 60.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
                maxChildSize: 0.9,
                initialChildSize: 0.4,
                builder: (context, controller) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: Colors.white,
                    ),
                    child: ListView(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      controller: controller,
                      // padding: EdgeInsets.only(left: 1.0),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 100.0,
                              height: 5.0,
                              color: Colors.grey[200],
                            )
                          ],
                        ),
                        Text(
                          "Directions",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),

                        // crossAxisAlignment: CrossAxisAlignment.center,

                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          subtitle: Text(
                            "Lorem Ipsum is simply dummy text of the printing. usman Ali",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10.0,
                          ),
                          title: Text(
                            "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

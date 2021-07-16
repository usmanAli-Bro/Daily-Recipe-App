import 'package:daily_receip/screen/apphome.dart';
import 'package:daily_receip/screen/favoritItem.dart';
import 'package:daily_receip/screen/home.dart';
import 'package:daily_receip/screen/notificationAction.dart';
import 'package:daily_receip/screen/settings.dart';
import 'package:daily_receip/screen/viewedItem.dart';
import 'package:flutter/material.dart';
import 'package:animated_drawer/views/animated_drawer.dart';

class MyDrawer extends StatefulWidget {
  final itemColor;

  MyDrawer({@required this.itemColor});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Color menucolor = Colors.red;

  @override
  Widget build(BuildContext context) {
    Color menucolor = Colors.red;
    var icons = Icons;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[100]),
              height: 50.0,
              width: 50.0,
              child: Image.asset(
                "assets/images/user1.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emma Holmes",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  "View Profile",
                  style: TextStyle(color: Colors.grey, fontSize: 9),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationAction()));
                },
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
      body: MyBody(
        itemColor: widget.itemColor,
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  final itemColor;
  MyBody({this.itemColor});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    // bool _menucolor = false;
    bool _presed = false;
    return Container(
      color: Colors.grey[100],
      margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        padding: EdgeInsetsDirectional.only(bottom: 2.0),
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 1
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              onTap: () {
                // widget.itemColor == true;
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
                              openIcon:
                                  Icon(Icons.menu_open, color: Colors.black),
                              closeIcon: Icon(Icons.arrow_back_ios,
                                  color: Colors.black),
                              shadowColor: Color(0xFF4c41a3),
                              backgroundGradient: LinearGradient(
                                colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                              ),
                              menuPageContent: MyDrawer(
                                itemColor: 1,
                              ),
                              homePageContent: AppHome(),
                            )),
                    (route) => false);
              },
              leading: Icon(
                Icons.home,
                color: widget.itemColor == 1 ? Colors.red : Colors.grey,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 14,
                    color: widget.itemColor == 1 ? Colors.red : Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // SizedBox(
          //   height: 2.0,
          // ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 2
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              onTap: () {
                // setState(() {
                //   _menucolor = Colors.blue;
                // });
                // // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => FavoriteItem(),
                //     ));
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => AnimatedDrawer(
                //               homePageXValue: 150,
                //               homePageYValue: 80,
                //               homePageAngle: 1.0,
                //               homePageSpeed: 250,
                //               shadowXValue: 122,
                //               shadowYValue: 110,
                //               shadowAngle: -0.275,
                //               shadowSpeed: 550,
                //               shadowColor: Color(0xFF4c41a3),
                //               backgroundGradient: LinearGradient(
                //                 colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                //               ),
                //               menuPageContent: MyDrawer(),
                //               homePageContent: FavoriteItem(),
                //             )),
                //     (route) => false);

                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => AnimatedDrawer(
                //               homePageXValue: 150,
                //               homePageYValue: 80,
                //               homePageAngle: -0.2,
                //               homePageSpeed: 250,
                //               shadowXValue: 122,
                //               shadowYValue: 110,
                //               shadowAngle: -0.275,
                //               shadowSpeed: 550,
                //               shadowColor: Color(0xFF4c41a3),
                //               backgroundGradient: LinearGradient(
                //                 colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                //               ),
                //               menuPageContent: MyDrawer(
                //                 itemColor: 2,
                //               ),
                //               homePageContent: FavoriteItem(),
                //             )),
                //     (route) => false);
                // setState(() {
                //   // _presed = !_presed;
                // });
                setState(() {
                  _presed = true;
                });
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavoriteItem(
                              itemColor: 3,
                            )),
                    (route) => false);
                // Future.delayed(Duration(seconds: 1), () {
                //   Navigator.pushAndRemoveUntil(
                //       context,
                //       MaterialPageRoute(builder: (context) => FavoriteItem()),
                //       (route) => false);
                // });
              },
              leading: Icon(
                Icons.favorite_outline,
                color: widget.itemColor == 2 ? Colors.red : Colors.grey,
              ),
              title: Text(
                "Favorites",
                style: TextStyle(
                  fontSize: 14,
                  color: widget.itemColor == 2 ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 3
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              onTap: () {
                setState(() {
                  _presed = true;
                });
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => MyViewediteItem()));
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyViewediteItem(
                              itemColor: 3,
                            )),
                    (route) => false);
                // Future.delayed(Duration(seconds: 1), () {
                //   Navigator.pushAndRemoveUntil(
                //       context,
                //       MaterialPageRoute(builder: (context) => MyViewediteItem()),
                //       (route) => false);
                // });
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => AnimatedDrawer(
                //               homePageXValue: 150,
                //               homePageYValue: 80,
                //               homePageAngle: -0.2,
                //               homePageSpeed: 250,
                //               shadowXValue: 122,
                //               shadowYValue: 110,
                //               shadowAngle: -0.275,
                //               shadowSpeed: 550,
                //               shadowColor: Color(0xFF4c41a3),
                //               backgroundGradient: LinearGradient(
                //                 colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                //               ),
                //               menuPageContent: MyDrawer(),
                //               homePageContent: MyViewediteItem(),
                //             )),
                //     (route) => false);
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) => MyViewediteItem()),
                //     (route) => false);
              },
              leading: Icon(
                Icons.recent_actors,
                color: widget.itemColor == 3 ? Colors.red : Colors.grey,
              ),
              title: Text(
                "Recently Viewed",
                style: TextStyle(
                  fontSize: 14,
                  color: widget.itemColor == 3 ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 4
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              onTap: () {
                setState(() {
                  _presed = true;
                });
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySettings(
                              itemColor: 3,
                            )),
                    (route) => false);
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => AnimatedDrawer(
                //               homePageXValue: 150,
                //               homePageYValue: 80,
                //               homePageAngle: -0.2,
                //               homePageSpeed: 250,
                //               shadowXValue: 122,
                //               shadowYValue: 110,
                //               shadowAngle: -0.275,
                //               shadowSpeed: 550,
                //               shadowColor: Color(0xFF4c41a3),
                //               backgroundGradient: LinearGradient(
                //                 colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                //               ),
                //               menuPageContent: MyDrawer(
                //                 itemColor: 4,
                //               ),
                //               homePageContent: MySettings(),
                //             )),
                //     (route) => false);
              },
              leading: Icon(
                Icons.settings_applications_sharp,
                color: widget.itemColor == 4 ? Colors.red : Colors.grey,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 14,
                  color: widget.itemColor == 4 ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 5
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              leading: Icon(
                Icons.disc_full_sharp,
                color: widget.itemColor == 5 ? Colors.red : Colors.grey,
              ),
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 14,
                  color: widget.itemColor == 5 ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 6
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              leading: Icon(
                Icons.help_outline_sharp,
                color: Colors.grey,
              ),
              title: Text(
                "Help",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2,
                        color: widget.itemColor == 7
                            ? Colors.red
                            : Colors.white))),
            child: ListTile(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Splashscreen()),
                    (route) => false);
              },
              leading: Icon(
                Icons.exit_to_app_rounded,
                color: Colors.grey,
              ),
              title: Text(
                "Signout",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

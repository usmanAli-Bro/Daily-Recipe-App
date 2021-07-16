import 'package:daily_receip/screen/drawer.dart';
import 'package:flutter/material.dart';
import 'package:animated_drawer/views/animated_drawer.dart';

class MySettings extends StatefulWidget {
  final itemColor;
  const MySettings({@required this.itemColor});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  bool _presed = false;
  bool isclicked = false;

  @override
  Widget build(BuildContext context) {
    // double xOffset = 0;
    // double yOffset = 0;
    // bool isDrawerOpen = false;

    return GestureDetector(
      onTap: () {
        setState(() {
          // isdraweropen = true;
        });

        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
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
                              closeIcon: Icon(Icons.arrow_back_ios,
                                  color: Colors.white),
                              shadowColor: Color(0xFF4c41a3),
                              backgroundGradient: LinearGradient(
                                colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
                              ),
                              menuPageContent: MyDrawer(),
                              homePageContent: MySettings(),
                            )),
                    (route) => false);
              },
              icon: Icon(
                _presed ? Icons.arrow_back : Icons.menu,
                color: _presed ? Colors.white : Colors.black,
                //_presed ? Colors.black : Colors.grey
              )),
          title: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        body: AppSettings(),
      ),
    );
  }
}

class AppSettings extends StatefulWidget {
  const AppSettings({Key key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    double xOffset = 0;
    double yOffset = 0;

    bool isDrawerOpen = false;
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: GestureDetector(
          onTap: () {
            isDrawerOpen
                ? GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        isDrawerOpen = false;
                      });
                    },
                  )
                : GestureDetector(
                    child: Icon(Icons.menu),
                    onTap: () {
                      setState(() {
                        xOffset = 290;
                        yOffset = 80;
                        isDrawerOpen = true;
                      });
                    },
                  );
          },
          child: Column(
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),

                  //SizedBox(height: 10,)
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //  width: 340.0,
                //height: 60.0,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        IconButton(
                          icon: Icon(Icons.language_outlined),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        Text("Language")
                      ]),
                      // Text(
                      //   "English",
                      //   style: TextStyle(color: Colors.red),
                      // ),
                      Switch(
                          value: false,
                          onChanged: (yo) {
                            yo = true;
                          })
                    ]),
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                thickness: 1.0,
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              // displaying second row bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          IconButton(
                            icon: Icon(Icons.notifications_outlined),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                          Text("Push Notification")
                        ]),
                        // Text(
                        //   "English",
                        //   style: TextStyle(color: Colors.red),
                        // ),
                        Switch(
                            value: false,
                            onChanged: (yo) {
                              setState(() {
                                yo = true;
                              });
                              yo = true;
                            })
                      ]),
                  // second row
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          IconButton(
                            icon: Icon(Icons.mail_outline),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                          Text("Email Notification")
                        ]),
                        Switch(
                            value: change,
                            onChanged: (learning) {
                              setState(() {
                                change = !learning;
                              });
                            }),
                      ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool change = false;
}

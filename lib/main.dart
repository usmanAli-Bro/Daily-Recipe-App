// import 'package:daily_receip/myroutes/routes.dart';
import 'package:daily_receip/myroutes/routes.dart';
import 'package:daily_receip/screen/apphome.dart';
import 'package:daily_receip/screen/drawer.dart';
import 'package:daily_receip/screen/home.dart';
import 'package:daily_receip/screen/login.dart';
import 'package:daily_receip/screen/loginclass.dart';
// import 'package:daily_receip/screen/favoritItem.dart';
// import 'package:daily_receip/screen/itemDetail.dart';
// import 'package:daily_receip/screen/login.dart';
// import 'package:daily_receip/screen/notificationAction.dart';
// import 'package:daily_receip/screen/notifications.dart';
// import 'package:daily_receip/screen/settings.dart';
// import 'package:daily_receip/screen/viewedItem.dart';
import 'package:flutter/material.dart';
// import 'package:daily_receip/screen/home.dart';
// import 'widgets/themes.dart';
import 'package:animated_drawer/views/animated_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: ,
      routes: {
        routes.homeroute: (context) => Splashscreen(),
        routes.loginroute: (context) => Login(),
        routes.apphome: (context) => AppHome(),
        routes.splash: (context) => Splashscreen()
      },
      debugShowCheckedModeBanner: false,
      // home: Splashscreen(),
      // home: Scaffold(
      //   //   body: Stack(
      //   // children: [MyDrawer(), AppHome()],
      // )),
      initialRoute: "/home",

      //  AnimatedDrawer(
      //   homePageXValue: 150,
      //   homePageYValue: 80,
      //   homePageAngle: -0.2,
      //   homePageSpeed: 250,
      //   shadowXValue: 122,
      //   shadowYValue: 110,
      //   shadowAngle: -0.275,
      //   shadowSpeed: 550,
      //   shadowColor: Color(0xFF4c41a3),
      //   backgroundGradient: LinearGradient(
      //     colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
      //   ),
      //   menuPageContent: MyDrawer(),
      //   homePageContent: AppHome(),
      // )
    );
  }
}

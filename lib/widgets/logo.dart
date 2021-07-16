import 'package:flutter/material.dart';

class Logoes extends StatelessWidget {
  const Logoes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(100)),
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.fitWidth,
            width: 100,
            height: 100,
            alignment: Alignment.topCenter,
          ),
        ),
        Text(
          "Daily Receip",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
        /*   const Positioned(
                        left: 0,
                        bottom: 0,
                        child: Text(
                          "Daily Receip",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      )*/
        /*  Text(
                        "Cooking Done The easy way",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 12),
                      ),*/
      ],
    );
  }
}

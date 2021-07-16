import 'package:daily_receip/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:daily_receip/widgets/logo.dart';

class Splashscreen extends StatelessWidget {
  //bool chkauth = true;
  const Splashscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stack(
        children: [
          Image(
              width: double.infinity,
              image: AssetImage("assets/images/back101.png"),
              fit: BoxFit.cover),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Logoes(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Cooking Done The Easy Way",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login(
                                    chkfrm: true,
                                  )));
                      // chkfrm:
                      // true;
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: AnimatedContainer(
                      alignment: Alignment.center,
                      width: 400,
                      height: 50,
                      duration: Duration(seconds: 2),
                      child: Text(
                        'Registration',
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  //Buttonchk(getText: "Register"),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login(
                                    chkfrm: false,
                                  )));
                      // chkfrm:
                      // false;
                      // // Navigator.popAndPushNamed(context, '/login');
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    //);//end
  }
}

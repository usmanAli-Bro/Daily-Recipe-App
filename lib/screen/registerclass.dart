import 'package:daily_receip/screen/apphome.dart';
import 'package:daily_receip/screen/drawer.dart';
import 'package:daily_receip/widgets/buttons.dart';
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';

class Registeration extends StatelessWidget {
  const Registeration({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Register ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Form(
          // key: _formkey,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  //hintText: "Password",
                  labelText: "Full Name",
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(

                    //hintText: "Full Name",
                    labelText: "Enter Email Address",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    hoverColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    //hintText: "Password",
                    labelText: "Passsword",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              // Container(
              //     alignment: Alignment.topRight,
              //     child: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "Forgot Password",
              //           style: TextStyle(color: Colors.blue),
              //         ))),
              // Buttonchk(getText: "Register"),
              SizedBox(
                height: 50,
              ),
              // Container(
              //   alignment: Alignment.center,
              //   width: 300,
              //   height: 60,
              //   decoration: BoxDecoration(
              //       color: Colors.amber,
              //       borderRadius: BorderRadius.circular(14)),
              //   child: Container(child: Text("Sign in")),
              // ),
              //  Buttonchk(getText: "Register"),
              InkWell(
                onTap: () {
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
                                shadowColor: Color(0xFF4c41a3),
                                backgroundGradient: LinearGradient(
                                  colors: [
                                    Color(0xFF4c41a3),
                                    Color(0xFF1f186f)
                                  ],
                                ),
                                menuPageContent: MyDrawer(
                                  itemColor: 1,
                                ),
                                homePageContent: AppHome(),
                              )),
                      (route) => false);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 400,
                  height: 50,
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

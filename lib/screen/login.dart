import 'package:daily_receip/screen/loginclass.dart';
import 'package:daily_receip/screen/registerclass.dart';
import 'package:daily_receip/widgets/logo.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final bool chkfrm;
  const Login({Key key, this.chkfrm = true}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(children: [
        Image(
          image: AssetImage("assets/images/back101.png"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80.0,
                        ),
                        Logoes(),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        checkid == widget.chkfrm
                            ? Loginform()
                            : Registeration(),
                        // Padding(
                        //     padding:
                        //         EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        //     child:chkfrm? loginform(): Registeration()) //
                        ///loginform(),Registeration()///display form here
                        ///
                        SizedBox(
                          height: height * 0.2 - 20,
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                checkid == widget.chkfrm
                                    ? "Dont Have Account"
                                    : "Already Registered?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  checkid = !checkid;
                                });
                              },
                              child: Text(
                                checkid == widget.chkfrm
                                    ? "Register"
                                    : "Sign In",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: height * 0.2 - 20,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              //  ),
            ),
          ),
        ),
      ]),
    );
  }

  bool checkid = false;
}

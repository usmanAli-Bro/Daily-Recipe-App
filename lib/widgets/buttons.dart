import 'package:daily_receip/screen/loginclass.dart';
import 'package:flutter/material.dart';

class Buttonchk extends StatelessWidget {
  final String getText;
  final onTap;
  // final  chksignup;
  Buttonchk({Key key, this.getText, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      //  () {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => const Loginform()));
      // },
      child: AnimatedContainer(
        alignment: Alignment.center,
        width: 400,
        height: 50,
        duration: Duration(seconds: 2),
        child: Text(
          getText,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

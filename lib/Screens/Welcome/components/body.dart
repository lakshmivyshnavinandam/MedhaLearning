import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manuallogin/Screens/Welcome/components/background.dart';
import 'package:manuallogin/components/round_button.dart';
import 'package:manuallogin/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    print("hello"+ size.toString());//Height and Width of screen
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Welcome to Medha",
                style: TextStyle(fontWeight: FontWeight.bold)
            ),
            SizedBox(height: size.height*0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height*0.45,
            ),
            SizedBox(height: size.height*0.03),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryLightColor,
              textColor: Colors.black ,
              press: () {}
            ),
            RoundedButton(
                text: "SIGNUP",
                color: kPrimaryLightColor,
                textColor: Colors.black ,
                press: () {}
            )
          ],
        ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectmanagement/model/LoginPage.dart';
import 'package:projectmanagement/model/RegistrationPage.dart';

import '../widget/CustomButton.dart';
import '../widget/CustomColor.dart';
import '../widget/CustomFont.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -180,
                child: Transform.rotate(
                  angle: pi / 5,
                  child: Container(
                    height: 480,
                    width: 480,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff8E8E93)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get Notified when\nyou Get a New\nAssignment",
                    style: myFont(36, wfColor, FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 36),
                    child: SvgPicture.asset("asset/icons/slider-3.svg"),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrationPage()));
                    },
                    child: CustomButton(text: "Sign Up", onTap: () {}),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }),
                    child: CustomButton(
                      text: "Login",
                      onTap: () {},
                      isClr: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 5),
                      child: SvgPicture.asset("asset/icons/Indicator.svg"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

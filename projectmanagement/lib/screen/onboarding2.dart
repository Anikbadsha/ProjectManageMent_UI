import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectmanagement/widget/CustomButton.dart';
import 'package:projectmanagement/widget/CustomColor.dart';
import 'package:projectmanagement/widget/CustomFont.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
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
                    "Create a Task and\nAssign it to Your\nTeam Members",
                    style: myFont(36, wfColor, FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 36),
                    child: SvgPicture.asset("asset/icons/slider-2.svg"),
                  ),
                  CustomButton(text: "Sign Up", onTap: () {}),
                  CustomButton(
                    text: "Login",
                    onTap: () {},
                    isClr: false,
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

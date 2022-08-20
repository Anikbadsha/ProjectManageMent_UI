import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectmanagement/screen/OnBoardingScreen.dart';
import 'package:projectmanagement/screen/onboarding1.dart';
import 'package:projectmanagement/widget/CustomButton.dart';
import 'package:projectmanagement/widget/CustomColor.dart';
import 'package:projectmanagement/widget/CustomFont.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Container(
                      height: 96,
                      decoration: BoxDecoration(
                          color: sbgColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Image(image: AssetImage("asset/icons/Logo.png")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "RANCANG",
                      style: myFont(36, wfColor, FontWeight.w700),
                    ),
                  ),
                  Text(
                    "Your Personal Task Manager",
                    style: myFont(17, wfColor, FontWeight.w400),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 5,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OnBoardingScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 17, bottom: 17),
                      height: 56,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Color(0xff246BFD),
                          borderRadius: BorderRadius.circular(28)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Getting Started",
                            style: myFont(17, Colors.white, FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SvgPicture.asset("asset/icons/Indicator.svg"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectmanagement/screen/Stepper/Stepper3.dart';
import 'package:projectmanagement/widget/CustomButton.dart';
import 'package:projectmanagement/widget/CustomColor.dart';
import 'package:projectmanagement/widget/CustomFont.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (() {
            Navigator.of(context).pop();
          }),
          child: Icon(
            Icons.arrow_back_ios,
            color: wfColor,
          ),
        ),
        centerTitle: true,
        title: SvgPicture.asset("asset/icons/Stepper-Slider-2.svg"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Stepper3()));
                },
                child:
                    CustomButton(text: "Create Your Own Team", onTap: () {})),
            Text(
              "Or",
              style: myFont(
                16,
                wfColor,
              ),
            ),
            InkWell(
              onTap: () {},
              child: CustomButton(
                text: "Join Team",
                onTap: () {},
                isClr: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

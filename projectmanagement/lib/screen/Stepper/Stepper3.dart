import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectmanagement/screen/Stepper/Stepper4.dart';

import '../../widget/CustomButton.dart';
import '../../widget/CustomColor.dart';
import '../../widget/CustomFont.dart';

class Stepper3 extends StatefulWidget {
  const Stepper3({Key? key}) : super(key: key);

  @override
  State<Stepper3> createState() => _Stepper3State();
}

class _Stepper3State extends State<Stepper3> {
  final TextEditingController emailEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
        title: SvgPicture.asset("asset/icons/Stepper-Slider-3.svg"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              "Create Your Own Team",
              style: myFont(
                16,
                wfColor,
              ),
            ),
            Form(
                key: formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Full Name",
                        style: myFont(16, gfColor, FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        style: myFont(16, gfColor),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: gfColor,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 18, left: 18),
                            child: Icon(
                              Icons.person_outline,
                              color: gfColor,
                            ),
                          ),
                          hintText: "e.g. Anik Badshah",
                          hintStyle: myFont(16, gfColor, FontWeight.w400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: gfColor,
                                  width: 1,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: InkWell(
                            onTap: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Stepper4()));
                            }),
                            child:
                                CustomButton(text: "Continue", onTap: () {})),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectmanagement/screen/Stepper/Stepper2.dart';

import '../../widget/CustomButton.dart';
import '../../widget/CustomColor.dart';
import '../../widget/CustomFont.dart';
import 'package:image_picker/image_picker.dart';

class Stepper1 extends StatelessWidget {
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
        title: SvgPicture.asset("asset/icons/Stepper-Slider-1.svg"),
      ),
      body: Column(
        children: [
          Text(
            "Complete Your Profiles",
            style: myFont(16, wfColor, FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: (() {
              getImageCamera();
            }),
            child: CircleAvatar(
              radius: 88,
              backgroundColor: bgColor,
              child: Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      color: gfColor, borderRadius: BorderRadius.circular(43)),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: wfColor,
                  )),
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
                            Icons.person,
                            color: gfColor,
                          ),
                        ),
                        hintText: "Enter Your full name",
                        hintStyle: myFont(16, gfColor, FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: gfColor,
                                width: 1,
                                style: BorderStyle.solid)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Your Password",
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
                          padding: const EdgeInsets.only(left: 18, right: 18),
                          child: Transform.rotate(
                            angle: pi / 4,
                            child: Icon(
                              Icons.key_outlined,
                              color: gfColor,
                            ),
                          ),
                        ),
                        hintText: "Enter Your Password",
                        hintStyle: myFont(16, gfColor, FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: gfColor,
                                width: 1,
                                style: BorderStyle.solid)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Stepper2()));
                        }),
                        child: CustomButton(text: "Continue", onTap: () {})),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  File? img;
  ImagePicker picker = ImagePicker();
  Future getImageCamera() async {
    var PickImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      img = File(PickImage!.path);
    });
  }
}

void setState(Null Function() param0) {}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectmanagement/screen/Stepper/Stepper1.dart';

import '../widget/CustomButton.dart';
import '../widget/CustomColor.dart';
import '../widget/CustomFont.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48, left: 16, right: 16),
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: wfColor,
                  ),
                ),
                Text("Sign Up", style: myFont(16, wfColor, FontWeight.w700)),
              ],
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
                      "Your Email Address",
                      style: myFont(16, gfColor, FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      child: TextFormField(
                        style: myFont(16, gfColor),
                        keyboardType: TextInputType.name,
                        controller: emailEditingController,
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
                              Icons.email_outlined,
                              color: gfColor,
                            ),
                          ),
                          hintText: "Enter Your Email Address",
                          hintStyle: myFont(16, gfColor, FontWeight.w400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: gfColor,
                                  width: 1,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Stepper1()));
                      },
                      child: CustomButton(text: "Continue", onTap: () {}),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectmanagement/widget/CustomButton.dart';
import 'package:projectmanagement/widget/CustomColor.dart';
import 'package:projectmanagement/widget/CustomFont.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    CustomButton(text: "Login", onTap: () {}),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Text(
                          "Forgot Your Password",
                          style: myFont(16, wfColor, FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

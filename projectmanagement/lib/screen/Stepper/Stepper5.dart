import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectmanagement/widget/CustomButton.dart';
import 'package:projectmanagement/widget/CustomFont.dart';

import '../../widget/CustomColor.dart';

class Stepper5 extends StatefulWidget {
  const Stepper5({Key? key}) : super(key: key);

  @override
  State<Stepper5> createState() => _Stepper5State();
}

class _Stepper5State extends State<Stepper5> {
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
        title: SvgPicture.asset("asset/icons/Stepper-Slider-5.svg"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              "Invite Your Team Member",
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
                        "Email Member",
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
                              Icons.email,
                              color: gfColor,
                            ),
                          ),
                          hintText: "Type an email addrress",
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
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => Stepper5()));
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

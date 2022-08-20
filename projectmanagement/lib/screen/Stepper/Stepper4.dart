import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectmanagement/screen/Stepper/Stepper5.dart';
import 'package:projectmanagement/widget/CustomButton.dart';

import '../../widget/CustomColor.dart';
import '../../widget/CustomFont.dart';

class Stepper4 extends StatefulWidget {
  const Stepper4({Key? key}) : super(key: key);

  @override
  State<Stepper4> createState() => _Stepper4State();
}

class _Stepper4State extends State<Stepper4> {
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
        title: SvgPicture.asset("asset/icons/Stepper-Slider-4.svg"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              "Enter Your Code Team",
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
                        "Code Team",
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
                              Icons.key,
                              color: gfColor,
                            ),
                          ),
                          hintText: "e.g. JKEHHEEaawe123",
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
                                  builder: (context) => Stepper5()));
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

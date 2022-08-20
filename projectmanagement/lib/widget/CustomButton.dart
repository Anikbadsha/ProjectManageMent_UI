import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectmanagement/widget/CustomFont.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.isClr,
    required this.onTap,
  }) : super(key: key);

  final String text;

  final bool? isClr;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 22),
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: isClr == null ? Color(0xff246BFD) : Colors.transparent,
              border: Border.all(
                  color:
                      isClr == null ? Colors.transparent : Color(0xffFFFFFF))),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: myFont(17, Color(0xffFFFFF), FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}


//  CustomButton(
//                     text: "Sign Up",
//                     onTap: () {},
//                   ),
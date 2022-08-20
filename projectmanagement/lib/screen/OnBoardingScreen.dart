import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectmanagement/screen/Onboarding3.dart';
import 'package:projectmanagement/screen/onboarding1.dart';
import 'package:projectmanagement/screen/onboarding2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        Onboarding1(),
        Onboarding2(),
        OnBoarding3(),
      ],
    );
  }
}

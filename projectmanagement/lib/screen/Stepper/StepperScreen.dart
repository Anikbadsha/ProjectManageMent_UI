import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectmanagement/screen/Stepper/Stepper1.dart';
import 'package:projectmanagement/screen/Stepper/Stepper2.dart';
import 'package:projectmanagement/screen/Stepper/Stepper3.dart';
import 'package:projectmanagement/screen/Stepper/Stepper4.dart';
import 'package:projectmanagement/screen/Stepper/Stepper5.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        Stepper1(),
        Stepper2(),
        Stepper3(),
        Stepper4(),
        Stepper5(),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stepper/stepper.dart';

class StepperValidation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StepperValidationState();
}

class StepperValidationState extends State<StepperValidation> {
  bool isValidStep = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HorizontalStepper(
            steps: [
              HorizontalStep(
                title: "Pick Image",
                widget: Center(
                  child: Text("Step 1"),
                ),
                state: HorizontalStepState.SELECTED,
                isValid: true,
              ),
              HorizontalStep(
                title: "Fill Form",
                widget: Center(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        isValidStep = true;
                      });
                    },
                    child: Text(
                      "Fill up form",
                    ),
                  ),
                ),
                isValid: isValidStep,
              ),
              HorizontalStep(
                title: "Get Details ",
                widget: Center(
                  child: Text("Step 3"),
                ),
                isValid: true,
              ),
              HorizontalStep(
                title: "Find Location",
                widget: Center(
                  child: Text("Step 4"),
                ),
                isValid: true,
              )
            ],
            selectedColor: const Color(0xFF4FE2C0),
            unSelectedColor: Colors.grey.shade400,
            leftBtnColor: const Color(0xffEA7F8B),
            rightBtnColor: const Color(0xFF4FE2C0),
            selectedOuterCircleColor: const Color(0xFF40A8F4),
            type: Type.TOP,
            circleRadius: 30,
            onComplete: () {
              print("completed");
            },
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: null,
            )),
      ),
      appBar: AppBar(
        title: Text("Stepper State"),
      ),
    );
  }
}
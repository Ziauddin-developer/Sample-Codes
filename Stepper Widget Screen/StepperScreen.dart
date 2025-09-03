import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  @override
  _StepperScreenState createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;

  List<Step> _steps = [
    Step(
      title: Text('Step 1'),
      content: Text('This is the first step'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('This is the second step'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('This is the third step'),
      isActive: true,
    ),
    Step(
      title: Text('Step 4'),
      content: Text('This is the Fourth step'),
      isActive: true,
    ),
    Step(
      title: Text('Step 5'),
      content: Text('This is the fifth step'),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Example')),
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (index) {
          setState(() {
            _currentStep = index;
          });
        },
        onStepContinue: () {
          if (_currentStep < _steps.length - 1) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
        steps: _steps,
      ),
    );
  }
}

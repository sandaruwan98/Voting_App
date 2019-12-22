import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(type: StepperType.horizontal, steps: [
              getStep(
                title: "Choose",
                child: Text('Somrrrr'),
                isActive: true,
              ),
              getStep(
                title: "Vote",
                child: Text('Somrgffrrr'),
                isActive: true,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Step getStep({String title, Widget child, bool isActive = false}) {
    return Step(title: Text(title), content: child, isActive: isActive);
  }
}

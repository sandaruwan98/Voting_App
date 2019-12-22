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
              Step(
                title: Text("Choose"),
                content: Text("data 1"),
                isActive: true,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

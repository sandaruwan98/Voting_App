import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:voting_app/screens/home_screen.dart';
import 'package:voting_app/screens/launch_screen.dart';
import 'package:voting_app/screens/result_screen.dart';

void main() => runApp(VoteApp());

class VoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Scaffold(
              body: LaunchScreen(),
            ),
        "/home": (context) => Scaffold(
              appBar: AppBar(
                title: Text(appName),
              ),
              body: HomeScreen(),
            ),
        "/result": (context) => Scaffold(
              appBar: AppBar(
                title: Text("Result"),
                leading: IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              body: ResultScreen(),
            ),
      },
    );
  }
}

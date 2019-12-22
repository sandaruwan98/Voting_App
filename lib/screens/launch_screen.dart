import 'package:flutter/material.dart';
import 'package:voting_app/constants.dart';
import 'package:voting_app/widgets/shared_widgets.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              appName,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          // if (authState.authStatus == kAuthLoading)
          //   Text(
          //     'loading...',
          //     style: TextStyle(fontSize: 12.0),
          //   ),
          // if (authState.authStatus == null ||
          //     authState.authStatus == kAuthError)
          Container(
            child: Column(
              children: <Widget>[
                LoginButton(
                  label: 'Google Sign In',
                  onPressed: () => signIn(context),
                ),
                SizedBox(
                  height: 10,
                ),
                LoginButton(
                  label: 'Anonymous Sign In',
                  onPressed: () => signIn(context),
                ),
              ],
            ),
          ),
          // if (authState.authStatus == kAuthError)
          //   Text(
          //     'Error...',
          //     style: TextStyle(fontSize: 12.0, color: Colors.redAccent),
          //   ),
        ],
      ),
    );
  }

  void signIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }
}

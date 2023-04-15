import 'package:app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key, required this.myNumber}) : super(key: key);

  final int myNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
                },
                child: Text(
                  "Login Page $myNumber",
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}

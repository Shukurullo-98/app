import 'package:app/screens/login/login_screen.dart';
import 'package:app/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SettingsScreen(myNumber: 100,);
                    },
                  ),
                );
              },
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}

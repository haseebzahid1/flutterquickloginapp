import 'package:flutter/material.dart';
import 'package:quickbeeapp/widget/loginForm.dart';
import 'package:quickbeeapp/widget/stackIcon.dart';

import 'loginPage.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color(0xFF18D191)),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Logo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
                    child: Text(
                      "Quick Bee",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )
                ],
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quickbeeapp/widget/stackIcon.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Email",
                            hintText: "Email",
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Password",
                            hintText: "Passwrod",
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

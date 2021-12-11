import 'package:flutter/material.dart';
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
                        const SizedBox(height: 20,),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Password",
                            hintText: "Passwrod",
                          ),
                        ),
                       SizedBox(height: 30.0,),
                       Row(
                           children: [
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(
                                     left: 20.0, right: 5.0, top: 10.0),
                                 child: GestureDetector(
                                   onTap: () {
                                     Navigator.push(context, MaterialPageRoute(
                                         builder: (context) => Loginpage()
                                     ));
                                   },
                                   child:  Container(
                                       alignment: Alignment.center,
                                       height: 60.0,
                                       decoration:  BoxDecoration(
                                           color: Color(0xFF18D191),
                                           borderRadius:  BorderRadius.circular(9.0)),
                                       child:  const Text("Login",
                                           style:  TextStyle(
                                               fontSize: 20.0, color: Colors.white))),
                                 ),
                               ),
                             ),
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(
                                     left: 10.0, right: 5.0, top: 10.0),
                                 child:  Container(
                                     alignment: Alignment.center,
                                     height: 60.0,
                                     child:  const Text("Forgot Password?",
                                         style:  TextStyle(
                                             fontSize: 17.0, color: Color(0xFF18D191)))),
                               ),
                             ),
                           ],
                       ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Padding(
                                padding:  EdgeInsets.only(bottom:18.0),
                                child: Expanded(
                                  child:  Text("Create A New Account ",style:  TextStyle(
                                      fontSize: 17.0, color: Color(0xFF18D191),fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                        )
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

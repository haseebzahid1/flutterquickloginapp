import 'package:flutter/material.dart';
import 'package:quickbeeapp/screens/loginPage.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email = "";
  String password = "";
  final _formKey  = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Form(
            key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Email",
                      prefixIcon: (Icon(
                        Icons.person,
                        color: Colors.black38,
                      )),
                    ),
                    onSaved: (String? value) { // value = null
                      if(value != null){
                        email = value;
                      }
                    },
                    validator: (value) {
                      if (value == null || value.length <= 3) {
                        return 'Please enter your UserName';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Passwrod",
                      prefixIcon: (Icon(
                        Icons.lock,
                        color: Colors.black38,
                      )),
                    ),
                    onChanged: (value){
                      setState(() {
                        password = value;
                      });
                    },
                    onSaved: (String? value){
                      if(value!=null){
                        password = value;
                      }
                    } ,
                    validator: (String? value){
                      if(value==null || value.isEmpty){
                        return 'Password cannot be empty';
                      }else if(value.length <= 6){
                        return 'Password length should be at least 6';
                      }
                      return null;
                    },
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
                              if(_formKey.currentState!.validate()){
                                _formKey.currentState!.save();
                                print("$email, $password");
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Loginpage()
                                ));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('VALIDATION PASSED')));
                              } else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('VALIDATION ERROR')));
                              }

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
    );
  }
}

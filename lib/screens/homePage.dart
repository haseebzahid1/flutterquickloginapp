import 'package:flutter/material.dart';
import 'package:quickbeeapp/widget/button.dart';
import 'package:quickbeeapp/widget/stackIcon.dart';

import 'loginScreen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),   /////LOGO
            const Padding(
              padding:  EdgeInsets.only(top: 8.0,bottom: 8.0),
              child: Text(
                "Quick Bee",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
              child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                              },
                              child: Container(
                                height: 60.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff18d191),
                                  borderRadius: BorderRadius.circular(9.0),
                                ),
                                child: Text("Sing In With Email",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children:  <Widget>[
                          Button(btnPadding: const EdgeInsets.only(top: 10.0,right: 10.0), buttonTitle: 'Facebook',),
                          Button( btnPadding: const EdgeInsets.only(top: 10.0,left: 10.0), buttonTitle: 'Facebook',buttonColor: Colors.red,),
                      ],
                    )
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

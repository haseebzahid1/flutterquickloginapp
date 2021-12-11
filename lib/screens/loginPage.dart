import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickbeeapp/widget/gridContainer.dart';

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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  children: const <Widget>[
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xfffd7384),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.drive_eta,
                                color: Colors.white,
                              ),
                              Text(
                                "Montor",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Expanded(
                        child:  Container(
                          height: 100.0,
                          child: Column(
                            children: const <Widget>[
                              Expanded(
                                child: MixButton(btnPadding: EdgeInsets.only(bottom: 2.5, right: 2.5),
                                  buttonTitle: 'Classified', buttonIcon: Icons.local_offer, buttonColor: Color(0XFF2BD093),),
                              ),
                              Expanded(
                                  child: MixButton(btnPadding: EdgeInsets.only(top: 2.5, right: 2.5),
                                    buttonTitle: 'Service', buttonIcon: Icons.beenhere, buttonColor: Color(0XFFFC7B4D),)
                              ),
                            ],
                          ),
                        )),
                     Expanded(
                        child:  Container(
                          height: 100.0,
                          child: Column(
                            children: const <Widget>[
                              Expanded(
                                  child: MixButton(btnPadding: EdgeInsets.only(left: 2.5, bottom: 2.5),
                                    buttonTitle: 'Properties', buttonIcon: Icons.account_balance, buttonColor: Color(0XFF53CEDB),)
                              ),
                              Expanded(
                                  child: MixButton(btnPadding: EdgeInsets.only(left: 2.5, top: 2.5),
                                    buttonTitle: 'Jobs', buttonIcon: Icons.art_track, buttonColor: Color(0XFFF1B069),)

                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                 const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: const <Widget>[
                     Expanded(
                        child:  Text("Popular Trending",
                            style:  TextStyle(fontSize: 18.0))),
                     Expanded(
                        child:  Text(
                          "View All",
                          style:  TextStyle(color: Color(0XFF2BD093)),
                          textAlign: TextAlign.end,
                        ))
                  ],
                ),
                 const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

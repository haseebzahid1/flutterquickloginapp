import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickbeeapp/widget/cardImage.dart';
import 'package:quickbeeapp/widget/gridContainer.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0XFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState((){
            _bottomNavIndex = index;

          });
        },

        items: const [
           BottomNavigationBarItem(
              title:  Text(''),
              icon:  Icon(Icons.home)
          ),
           BottomNavigationBarItem(
              title:  Text(''),
              icon:  Icon(Icons.local_offer)
          ),
           BottomNavigationBarItem(
              title:  Text(''),
              icon:  Icon(Icons.message)
          ),
           BottomNavigationBarItem(
              title:  Text(''),
              icon:  Icon(Icons.notifications)
          )

        ],
      ),
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
                 const SizedBox(height: 15.0,),

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
                const SizedBox(height: 10.0,),
               Row(
                 children: [
                   const CardImage(cardImagePath: 'assets/images/electric.jpg', cardTitle: 'Electronic',),
                   const SizedBox(width: 5.0,),
                   const CardImage(cardImagePath: 'assets/images/jewlery.jpg', cardTitle: 'Jewlery and Watch',),
                   const SizedBox(width: 5.0,),
                   const CardImage(cardImagePath: 'assets/images/electronic.jpg', cardTitle: 'Electronic',),
                 ],
               ),
               Row(
                 children: [
                   const CardImage(cardImagePath: 'assets/images/motor.jpg', cardTitle: 'Motors',),
                   const SizedBox(width: 5.0,),
                   const CardImage(cardImagePath: 'assets/images/job.jpg', cardTitle: 'Jobs',),
                   const SizedBox(width: 5.0,),
                   const CardImage(cardImagePath: 'assets/images/property.jpg', cardTitle: 'Property',),
                 ],
               ),
               Row(
                 children: [
                   const CardImage(cardImagePath: 'assets/images/jewlery.jpg', cardTitle: 'Jewlery and Watch',),
                   const SizedBox(width: 5.0,),
                   const CardImage(cardImagePath: 'assets/images/electric.jpg', cardTitle: 'Electronic',),
                   const SizedBox(width: 5.0,),
                   const CardImage(cardImagePath: 'assets/images/job.jpg', cardTitle: 'Jobs',),
                 ],
               )

              ],
            ),
          ),
        ],
      ),
    );
  }
}

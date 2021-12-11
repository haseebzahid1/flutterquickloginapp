import 'package:flutter/material.dart';

import 'loginpage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff18d191),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(Icons.local_offer,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50.0,top: 50.0),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xfffc6a7f),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(Icons.home,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0,top: 50.0),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffffce56),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(Icons.local_car_wash,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90.0,top: 40.0),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff45e0ec),
                      borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(Icons.place,color: Colors.white,),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding:  EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child: Text(
                    "Quick Bee",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage()));
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right:10,top: 10.0),
                            child:  Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                decoration:  BoxDecoration(
                                    color: const Color(0xFF4364A1),
                                    borderRadius:  BorderRadius.circular(9.0)),
                                child:  const Text("FaceBook",
                                    style:  TextStyle(
                                        fontSize: 20.0, color: Colors.white))),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:  const EdgeInsets.only(
                                left:10,top: 10.0),
                            child:  Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                decoration:  BoxDecoration(
                                    color: Color(0xFFDF513B),
                                    borderRadius:  BorderRadius.circular(9.0)),
                                child:  const Text("Google",
                                    style:  TextStyle(
                                        fontSize: 20.0, color: Colors.white))),
                          ),
                        )
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

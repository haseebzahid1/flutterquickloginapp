import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
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
    );
  }
}

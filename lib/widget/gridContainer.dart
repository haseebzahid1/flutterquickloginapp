import 'package:flutter/material.dart';

class MixButton extends StatelessWidget {
  final String buttonTitle;
  final Color buttonTextColor;
  final Color buttonColor;
  final IconData buttonIcon;
  final EdgeInsetsGeometry btnPadding;
  const MixButton({Key? key,
    required this.buttonTitle,
    this.buttonTextColor = Colors.white,
    required this.btnPadding,
    required this.buttonColor,
    required this.buttonIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: btnPadding,
      child:  Container(
        decoration:  BoxDecoration(
            color: buttonColor,
            borderRadius:  BorderRadius.circular(5.0)),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
             Icon(buttonIcon, color: buttonTextColor,
             ),
            const SizedBox(width: 8.0,),
            Text("${buttonTitle}",
                style:  const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

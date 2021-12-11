import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String buttonTitle;
  final Color buttonTextColor;
   Color? buttonColor;
  final EdgeInsetsGeometry btnPadding;

   Button({Key? key,
    required this.buttonTitle,
     this.buttonTextColor = Colors.white,
    required this.btnPadding,
     this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: btnPadding,
        child:  Container(
            alignment: Alignment.center,
            height: 60.0,
            decoration:  BoxDecoration(
                color: buttonColor ?? const Color(0xFF4364A1),
                // color: const Color(0xFF4364A1),
                borderRadius:  BorderRadius.circular(9.0)),
            child:   Text(buttonTitle, style:  TextStyle(fontSize: 20.0, color: buttonTextColor)),
        ),
      ),
    );
  }
}

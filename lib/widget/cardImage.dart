import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String cardTitle;
  final String cardImagePath;
  const CardImage({Key? key, required this.cardTitle, required this.cardImagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 100,
                child: Image.asset(cardImagePath,fit: BoxFit.cover,)
            ),
            const SizedBox(height: 4,),
            Text(cardTitle,
              style:  TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

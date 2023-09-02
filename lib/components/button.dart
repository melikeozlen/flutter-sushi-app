import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sushi_restaurant/colors/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTabb;
  const MyButton({super.key, required this.text, required this.onTabb});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTabb,
      child: Container(
        width: deviceWidth - 50,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color.fromARGB(66, 255, 255, 255)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor(lightColor),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.arrow_forward,
              color: HexColor(lightColor),
            )
          ],
        ),
      ),
    );
  }
}

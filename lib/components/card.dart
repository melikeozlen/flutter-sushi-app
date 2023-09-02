import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sushi_restaurant/colors/colors.dart';

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 200.0,
        margin: const EdgeInsets.only(right: 40.0),
        padding: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: HexColor(lightColor),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        'lib/assets/images/sushi_1.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 247, 26, 92),
                    )
                  ],
                )),
            const Text(
              "Original Sushi",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 10.0),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$21.00"),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 196, 0),
                        ),
                        Text("4.8")
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sushi_restaurant/colors/colors.dart';
import 'package:sushi_restaurant/components/button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: deviceHeight,
          width: deviceWidth,
          decoration: BoxDecoration(color: HexColor(primaryColor)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "SUSHIMAN",
                    style: TextStyle(
                      color: HexColor(lightColor),
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: 10.0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "日",
                            style: TextStyle(
                                color: Color.fromARGB(255, 247, 247, 247),
                                fontSize: 90.0,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Japanese"),
                          ),
                          Text(
                            "本",
                            style: TextStyle(
                                color: Color.fromARGB(255, 247, 247, 247),
                                fontSize: 90.0,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Japanese"),
                          ),
                          Text(
                            "食",
                            style: TextStyle(
                                color: Color.fromARGB(255, 247, 247, 247),
                                fontSize: 90.0,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Japanese"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'lib/assets/images/main.png',
                    width: deviceWidth - 50,
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Text(
                      "THE TASTE OF JAPANESE FOOD",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          color: HexColor(lightColor)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                    child: const Text(
                      "Feel the raste most populars Japanese foods from where any anytime.",
                      style: TextStyle(
                          color: Color.fromARGB(137, 255, 255, 255),
                          fontFamily: ""),
                    ),
                  ),
                  MyButton(
                    text: "Get Started ",
                    onTabb: () {
                      Navigator.pushNamed(context, '/manupage');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

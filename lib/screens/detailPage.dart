import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sushi_restaurant/colors/colors.dart';
import 'package:sushi_restaurant/screens/menu.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: deviceWidth,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              NavigatorState navigatorState =
                                  Navigator.of(context);
                              navigatorState.push(MaterialPageRoute(
                                  builder: (context) => const Menu()));
                            },
                            child: const Icon(Icons.arrow_back)),
                        const Icon(
                          Icons.favorite_border_outlined,
                          color: Color.fromARGB(255, 65, 65, 65),
                          size: 30.0,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    width: deviceWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'lib/assets/images/sushi_1.png',
                              width: deviceWidth / 2,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 255, 187, 0),
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(fontSize: 20.0),
                                )
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 25.0, bottom: 5.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Original Sushi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 30.0),
                                    ),
                                    Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                top: 20.0),
                                        child: const Text(
                                          "Ingredients",
                                          style: TextStyle(fontSize: 20.0),
                                        ))
                                  ]),
                            )
                          ],
                        ),
                        const Column(
                          children: [
                            Text(
                              "日",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Japanese"),
                            ),
                            Text(
                              "本",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Japanese"),
                            ),
                            Text(
                              "食",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Japanese"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: deviceWidth - 40,
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis
                          .horizontal, // Yatay kaydırma için scrollDirection'ı ayarlayın
                      children: <Widget>[
                        Container(
                          width: 130.0,
                          margin: const EdgeInsets.only(right: 40.0),
                          padding: const EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                              color: HexColor(lightColor),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'lib/assets/images/sushi_1.png',
                                    height: 20.0,
                                  )),
                              const Text(
                                "Rice",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 136, 136, 136)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 130.0,
                          margin: const EdgeInsets.only(right: 40.0),
                          decoration: BoxDecoration(
                              color: HexColor(lightColor),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'lib/assets/images/souce.png',
                                  height: 20.0,
                                ),
                              ),
                              const Text(
                                "Souce",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 136, 136, 136)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 130.0,
                          margin: const EdgeInsets.only(right: 40.0),
                          decoration: BoxDecoration(
                              color: HexColor(lightColor),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'lib/assets/images/sushi_1.png',
                                  height: 20.0,
                                ),
                              ),
                              const Text(
                                "Tuna",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 136, 136, 136)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        height: 300.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(bottom: 20.0),
                                child: const Text(
                                  "Description",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                      color: Color.fromARGB(255, 51, 51, 51)),
                                )),
                            const Text(
                              "Sushi is a Japanese culinary masterpiece loved worldwide. It's a delectable combination of fresh fish, seafood, vegetables, and meticulously prepared sushi rice. Known for its elegant presentation and unique flavors, sushi is a culinary art form.At its core, sushi consists of fish and rice. The fish, which can include options like tuna, salmon, and more, is carefully selected and prepared. Sushi rice is a special variety of rice seasoned with vinegar, offering a distinctive taste and texture.",
                              style: TextStyle(
                                  wordSpacing: 1.2,
                                  height: 1.5,
                                  color: Color.fromARGB(255, 105, 105, 105)),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(30.0),
                          height: 170.0,
                          width: deviceWidth,
                          decoration:
                              BoxDecoration(color: HexColor(primaryColor)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$ 42.00",
                                    style: TextStyle(
                                        color: HexColor(lightColor),
                                        fontSize: 20.0),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (count != 0) {
                                              count--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.remove_circle_outline_outlined,
                                          color: Color.fromARGB(
                                              167, 255, 255, 255),
                                          size: 30.0,
                                        ),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              left: 15.0, right: 15.0),
                                          child: Text(
                                            '$count',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    226, 255, 255, 255),
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500),
                                          )),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            count += 1;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add_circle_outline_outlined,
                                          color: Color.fromARGB(
                                              167, 255, 255, 255),
                                          size: 30.0,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: deviceWidth,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  color:
                                      const Color.fromARGB(47, 255, 255, 255),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Buy Now ",
                                        style: TextStyle(
                                            color: HexColor(lightColor)),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: HexColor(lightColor),
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

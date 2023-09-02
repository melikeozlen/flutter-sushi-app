import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sushi_restaurant/colors/colors.dart';
import 'package:sushi_restaurant/screens/startPage.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

ColorFilter mode = ColorFilter.mode(
  Colors.blue
      .withOpacity(0.5), // Renk ve opaklık değeri (örnekte mavi ve %50 opaklık)
  BlendMode.dstATop, // Renk karışım modu
);

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Schyler"),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          NavigatorState navigatorState = Navigator.of(context);
                          navigatorState.push(MaterialPageRoute(
                              builder: (context) => const StartPage()));
                        },
                        child: const Icon(Icons.arrow_back)),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: HexColor(primaryColor),
                        ),
                        const Text(
                          " Jakarta ",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20.0,
                              fontFamily: "ubuntulight"),
                        )
                      ],
                    ),
                    Icon(
                      Icons.tag_faces_rounded,
                      color: HexColor(primaryColor),
                      size: 40.0,
                    )
                  ],
                ),
                Container(
                  height: deviceHeight / 8,
                  decoration: BoxDecoration(
                      color: HexColor(primaryColor),
                      borderRadius: BorderRadius.circular(40.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Get 32% Promo",
                                style: TextStyle(
                                    color: HexColor(lightColor),
                                    fontFamily: "play",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22.0),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 5.0,
                                    right: 30.0,
                                    left: 30.0),
                                decoration: BoxDecoration(
                                    color: HexColor(lightPrimaryColor),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text(
                                  "Buy Food",
                                  style: TextStyle(
                                      fontFamily: "ubuntulight",
                                      color: HexColor(lightColor),
                                      fontSize: 17.0),
                                ),
                              )
                            ]),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Transform.scale(
                            scale: 1.5,
                            child: Image.asset(
                              'lib/assets/images/shrim_dark.png',
                              width: 150,
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor(lightColor),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 148, 148, 148),
                          size: 30.0,
                        ),
                        Text(
                          " Search here",
                          style: TextStyle(
                              color: Color.fromARGB(255, 148, 148, 148),
                              fontSize: 18.0,
                              fontFamily: ""),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: deviceWidth - 10.0,
                  height: 40.0,
                  child: ListView(
                    scrollDirection: Axis
                        .horizontal, // Yatay kaydırma için scrollDirection'ı ayarlayın
                    children: <Widget>[
                      Container(
                        width: 130.0,
                        height: 30.0,
                        margin: EdgeInsets.only(right: 40.0),
                        padding: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            color: HexColor(lightColor),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                padding: EdgeInsets.all(8.0),
                                child: Image.asset(
                                    'lib/assets/images/sushi_1.png')),
                            Text(
                              "Sushi",
                              style: TextStyle(
                                  fontFamily: "ubuntumedium",
                                  fontSize: 17.0,
                                  color: HexColor(primaryColor)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130.0,
                        height: 30.0,
                        margin: EdgeInsets.only(right: 40.0),
                        decoration: BoxDecoration(
                            color: HexColor(lightColor),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('lib/assets/images/ramen.png'),
                            ),
                            const Text(
                              "Ramen",
                              style: TextStyle(
                                  fontFamily: "ubuntulight",
                                  fontSize: 17.0,
                                  color: Color.fromARGB(255, 136, 136, 136)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130.0,
                        height: 30.0,
                        margin: const EdgeInsets.only(right: 40.0),
                        decoration: BoxDecoration(
                            color: HexColor(lightColor),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('lib/assets/images/soup.png'),
                            ),
                            const Text(
                              "Soup",
                              style: TextStyle(
                                  fontFamily: "ubuntulight",
                                  fontSize: 17.0,
                                  color: Color.fromARGB(255, 136, 136, 136)),
                            )
                          ],
                        ),
                      ),
                      // Eklemek istediğiniz diğer widget'lar
                    ],
                  ),
                ),
                Container(
                  width: deviceWidth - 10.0,
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis
                        .horizontal, // Yatay kaydırma için scrollDirection'ı ayarlayın
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Image.asset(
                                          'lib/assets/images/sushi_1.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                      const Icon(
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
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 10.0),
                                child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("\$21.00"),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 18.0,
                                            color: Color.fromARGB(
                                                255, 255, 196, 0),
                                          ),
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 150, 150, 150),
                                                fontFamily: "ubuntuligth"),
                                          )
                                        ],
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
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
                                        'lib/assets/images/shrim_sushi.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    const Icon(Icons.favorite_border_outlined)
                                  ],
                                )),
                            const Text(
                              "Shrim Sushi",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$23.00"),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 18.0,
                                          color:
                                              Color.fromARGB(255, 255, 196, 0),
                                        ),
                                        Text(
                                          "4.8",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 150, 150, 150),
                                              fontFamily: "ubuntuligth"),
                                        )
                                      ],
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      ),

                      // Eklemek istediğiniz diğer widget'lar
                    ],
                  ),
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Popular Food",
                      style: TextStyle(fontSize: 20.0),
                    )),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  height: 120.0,
                  width: deviceWidth - 40,
                  decoration: BoxDecoration(
                      color: HexColor(lightColor),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('lib/assets/images/main_sushi.png'),
                        const Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Salomon Eggs"),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$21.00"),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.star,
                                            color: Color.fromARGB(
                                                255, 255, 196, 0)),
                                        Text("5.0")
                                      ],
                                    )
                                  ])
                            ],
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 60.0),
                            padding: const EdgeInsets.only(top: 25.0),
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              color: Color.fromARGB(255, 145, 145, 145),
                              size: 30.0,
                            ))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

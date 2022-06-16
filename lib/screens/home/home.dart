import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jajan/components/bottom_nav_bar.dart';
import 'package:jajan/components/category_card.dart';
import 'package:jajan/constants.dart';
import 'package:jajan/screens/details/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      //make a scrollable list of cards
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryColor, kBackgroundColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 52,
                      width: 52,
                      child: SvgPicture.asset(
                        "assets/icons/menu.svg",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Current Location",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Bendungan Hilir",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: SvgPicture.asset(
                          "assets/icons/search.svg",
                          color: kPrimaryColor,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          title: "Yamie Manis",
                          imageSrc: Image(
                            image: AssetImage("assets/images/yamie.jpg"),
                            width: size.width * 0.3,
                          ),
                          price: "Rp25.000",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Salad Daging",
                          imageSrc: Image(
                            image: AssetImage("assets/images/salad-daging.jpg"),
                            width: size.width * 0.3,
                          ),
                          price: "Rp35.000",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Salad Ikan",
                          imageSrc: Image(
                            image: AssetImage("assets/images/salad-ikan.jpg"),
                            width: size.width * 0.3,
                          ),
                          price: "Rp30.000",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Bubur",
                          imageSrc: Image(
                            image: AssetImage("assets/images/bubur.jpg"),
                            width: size.width * 0.3,
                          ),
                          price: "Rp20.000",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

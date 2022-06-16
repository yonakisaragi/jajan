import 'package:flutter/material.dart';
import 'package:jajan/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Image imageSrc;
  final String title;
  final String price;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: kPrimaryColor,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: imageSrc,
                ),
                Spacer(),
                Text(
                  title,
                ),
                Spacer(),
                Text(
                  price,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

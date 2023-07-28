import 'package:flutter/material.dart';
import 'package:bai1/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ), backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {
                    // Các hành động khi nhấp vào nút "Buy Now"
                  },
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Các hành động khi nhấp vào nút "Description"
                  },
                  child: const Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

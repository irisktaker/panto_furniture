import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:panto_furniture/constants/capitalize_first_letter.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    topBarTextButton({required String title, required Function() onPress}) {
      return TextButton(
        onPressed: onPress,
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      );
    }

    return Container(
      width: size.width,
      height: 1400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/img.png"),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Panto",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 478,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            topBarTextButton(
                              onPress: () {},
                              title: "Furniture",
                            ),
                            const SizedBox(width: 6.0),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      topBarTextButton(
                        onPress: () {},
                        title: "Shop",
                      ),
                      topBarTextButton(
                        onPress: () {},
                        title: "About Us",
                      ),
                      topBarTextButton(
                        onPress: () {},
                        title: "Contact",
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  padding: const EdgeInsets.only(),
                  onPressed: () {
                    print("Card Clicked");
                  },
                  child: SizedBox(
                    width: 35,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/icons/img.png',
                          width: 25.5,
                          height: 28.5,
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 20,
                            height: 25.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange,
                            ),
                            child: const Text(
                              "0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 92.0),
          Container(
            width: 900,
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "make your interior more minimalistic & modern".toTitleCase(),
              style: const TextStyle(
                fontSize: 80.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 626,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Turn your room with panto into a lot more minimalist and modern with ease and speed",
              style: TextStyle(
                  fontSize: 24.0, color: Colors.white.withOpacity(0.8)),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          ),
          const SizedBox(height: 45.0),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(
                width: 344,
                height: 56,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(42),
                    border: Border.all(color: Colors.grey.withOpacity(0.9)),
                    color: Colors.grey.withOpacity(0.4)),
                child: TextField(
                  cursorColor: Colors.white54,
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(color: Colors.white54, fontSize: 18),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search furniture',
                      hintStyle:
                          const TextStyle(color: Colors.white54, fontSize: 18),
                      suffixIcon: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Image.asset(
                          'assets/icons/img_1.png',
                          width: 18,
                          height: 18,
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MaterialSection extends StatelessWidget {
  const MaterialSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "experiences",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "we provide you the best experience",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 290,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const Text(
                    "You don’t have to worry about the result because all of these interiors are made by people who are professionals in their fields with an elegant and lucurious style and with premium quality materials",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
                MaterialButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  child: SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        const Text(
                          "More Info",
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Image.asset(
                          'assets/icons/img_2.png',
                          width: 40,
                          height: 10.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  width: 223,
                  height: 250,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        spreadRadius: -20,
                        color: Color.fromARGB(255, 134, 109, 100),
                        offset: Offset(0, 30),
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_6.png')),
                  ),
                ),
                const SizedBox(height: 26),
                Container(
                  width: 223,
                  height: 340,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        spreadRadius: -20,
                        color: Color.fromARGB(255, 134, 109, 100),
                        offset: Offset(0, 30),
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_7.png')),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 42),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 46,
                  width: 260,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)),
                    color: Color(0xFFF1F1F1),
                  ),
                ),
                Container(
                  height: 445,
                  width: 456,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        spreadRadius: -35,
                        color: Color.fromARGB(255, 134, 109, 100),
                        offset: Offset(-16, 50),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -175,
                        child: Container(
                          height: 445,
                          width: 629,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/img_8.png"))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 240),
      ],
    );
  }
}

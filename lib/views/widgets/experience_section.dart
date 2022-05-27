import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 240),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: -30,
                    color: Color.fromARGB(255, 134, 109, 100),
                    offset: Offset(-16, 50),
                  )
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    height: 422,
                    width: 460,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF1F1F1),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 460,
                    margin:
                        const EdgeInsets.only(left: 180, top: 138, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF1F1F1),
                      // color: Colors.red,
                    ),
                  ),
                  Positioned(
                    left: -20,
                    child: Container(
                      height: 405,
                      width: 629,
                      margin: const EdgeInsets.only(top: 44),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/img_5.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
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
          ],
        ),
        const SizedBox(height: 270),
      ],
    );
  }
}

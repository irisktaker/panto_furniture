import 'package:flutter/material.dart';
import 'package:panto_furniture/data/data.dart';

class ChoosingUsSection extends StatelessWidget {
  const ChoosingUsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 420,
      width: size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        itemExtent: 460,
        children: [
          const Center(
            child:  SizedBox(
              width: 262,
              height: 104,
              child: Text(
                "Why Choosing Us",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          ...whyChoosingUs
              .map(
                (element) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      element.title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      margin: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        element.description,
                        style: const TextStyle(
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
                            Text(
                              element.btnTitle,
                              style: const TextStyle(
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
              )
              .toList(),
        ],
      ),
    );
  }
}

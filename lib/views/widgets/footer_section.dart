import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> services = ['Email Marketing', 'Campaigns', 'Branding'];
    List<String> furniture = ['Beds', 'Chair', 'All'];
    List<Map<String, String>> followUs = [
      {'icon': 'assets/icons/img_4.png', 'title': 'Facebook'},
      {'icon': 'assets/icons/img_5.png', 'title': 'Twitter'},
      {'icon': 'assets/icons/img_6.png', 'title': 'Instagram'},
    ];

    return Container(
      width: size.width,
      height: 465,
      color: const Color(0xFFF7F7F7),
      padding:
          const EdgeInsets.only(top: 118, bottom: 56, left: 188, right: 188),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 1064,
            height: 146,
            child: Row(
              children: [
                SizedBox(
                  width: 293,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Panto",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 29),
                      Text(
                        "The advantage of hiring a workspace with us is that givees you comfortable service and all-around facilities.",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 2),
                buildColumn(list: services, title: "Services"),
                const Spacer(),
                buildColumn(list: furniture, title: "Furniture"),
                const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Follow Us',
              style:  TextStyle(fontSize: 17, color:   Color(0xFFF6973F)),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: SizedBox(
                    width: 130,
                    child: ListView.builder(
                        itemCount: followUs.length,
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(followUs[index]['icon']!, width: 20, height: 20,),
                                  const SizedBox(width: 8),
                                  Text(
                                    followUs[index]['title']!,
                                    style: const TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )))),
          ],
        ),

              ],
            ),
          ),
          SizedBox(
            width: 1064,
            height: 24,
            child: Row(
              children: [
                const Text(
                  "Copyright © 2021",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF1E2833),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumn({required List<String> list, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 17, color:   Color(0xFFF6973F)),
        ),
        const SizedBox(height: 20),
        Expanded(
            child: SizedBox(
                width: 130,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                list[index],
                                style: const TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        )))),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:panto_furniture/data/data.dart';

class BestSellingProductsSection extends StatefulWidget {
  const BestSellingProductsSection({Key? key}) : super(key: key);

  @override
  State<BestSellingProductsSection> createState() =>
      _BestSellingProductsSectionState();
}

class _BestSellingProductsSectionState
    extends State<BestSellingProductsSection> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> catalog = ['Chair', 'Beds', 'Sofa', 'Lamp'];
    return Container(
      width: size.width,
      height: 906.0,
      color: const Color(0xFFF7F7F7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Best Selling Products",
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            width: 350,
            height: 57,
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(44),
            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Colors.white
                            : const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(44),
                      ),
                      child: Text(catalog[index]),
                    ),
                  );
                },
                itemCount: catalog.length),
          ),
          Stack(
            children: [
              Container(
                width: 1280,
                alignment: Alignment.center,
                child: SizedBox(
                  height: 495,
                  width: 1209,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: bestSellingProducts.length,
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 280,
                          width: 270,
                          margin: const EdgeInsets.only(right: 42),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 270,
                                  height: 230,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 30,
                                child: Image.asset(
                                  bestSellingProducts[index].productImage,
                                  width: 218,
                                  height: 256,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 180,
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.only(right: 42),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bestSellingProducts[index].productType,
                                style: const TextStyle(
                                  fontSize: 16.75,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8D8D8D),
                                ),
                              ),
                              const SizedBox(height: 6.0),
                              Text(
                                bestSellingProducts[index].productName,
                                style: const TextStyle(
                                  fontSize: 21.50,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0D1B39),
                                ),
                              ),
                              const SizedBox(height: 6.0),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 22,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              const SizedBox(height: 16.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "\$ ",
                                        style: TextStyle(
                                          fontSize: 15.5,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "${bestSellingProducts[index].price}",
                                        style: const TextStyle(
                                          fontSize: 21.5,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const CircleAvatar(
                                      backgroundColor: Color(0xFF0D1B39),
                                      radius: 25,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 6,
                top: 495 / 2.4,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2.5,
                          offset: Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 495 / 2.4,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2.5,
                          offset: Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          MaterialButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            child: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "View All",
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
    );
  }
}

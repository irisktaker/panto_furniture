import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:panto_furniture/data/data.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          "Testimonials",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Our Client Reviews",
          style: TextStyle(
            fontSize: 42.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 60),
        SizedBox(
          height: 526,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    reviewCard(index),
                    Positioned(
                      top: 526 / 2.30,
                      left: 370 / 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.black38,
                                offset: Offset(0, 10),
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage(reviews[index].image)),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
        const SizedBox(height: 215.0),
      ],
    );
  }

  Container reviewCard(int index) {
    return Container(
      height: 526,
      width: 370,
      margin: const EdgeInsets.only(left: 38.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: -20,
            color: Color.fromARGB(255, 134, 109, 100),
            offset: Offset(0, 30),
          )
        ],
        image: DecorationImage(
          image: AssetImage(reviews[index].bgImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Builder(builder: (context) {
        return SizedBox(
          width: 334,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 242,
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 36.0),
                    Text(
                      reviews[index].title,
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1E1E1E)),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      reviews[index].subtitle,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1E1E1E)),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 22.0),
                    Text(
                      reviews[index].description,
                      style: const TextStyle(
                          fontSize: 15.0,
                          height: 1.3,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1E1E1E)),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 22,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18.0),
            ],
          ),
        );
      }),
    );
  }
}

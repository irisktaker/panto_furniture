import 'package:flutter/material.dart';
import 'package:panto_furniture/views/widgets/best_selling_products_section.dart';
import 'package:panto_furniture/views/widgets/choosing_us_section.dart';
import 'package:panto_furniture/views/widgets/experience_section.dart';
import 'package:panto_furniture/views/widgets/footer_section.dart';
import 'package:panto_furniture/views/widgets/landing_page.dart';
import 'package:panto_furniture/views/widgets/materials_section.dart';
import 'package:panto_furniture/views/widgets/reviews_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollBarController;

  @override
  void initState() {
    super.initState();
    _scrollBarController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollBarController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          controller: _scrollBarController,
          thumbVisibility: true,
          child: ListView(
            controller: _scrollBarController,
            children: const [
              LandingPage(),
              ChoosingUsSection(),
              BestSellingProductsSection(),
              ExperienceSection(),
              MaterialSection(),
              ReviewsSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

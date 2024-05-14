import 'package:flutter/material.dart';
import 'package:kursach/common_widget/round_button.dart';

import '../../common/color_extension.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
                width: media.width,
              ),
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.55,
                height: media.width * 0.40,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Text(
            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(title: "Login", onPressed: () {})),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                  title: "Create am Account",
                  type: RoundButtonType.textPrimary,
                  onPressed: () {}))
        ],
      ),
    );
  }
}

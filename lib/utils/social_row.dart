import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/utils/animated_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedButtonWidget(icon: FontAwesomeIcons.facebook, onTap: () {}),
        const SizedBox(
          width: 10.0,
        ),
        AnimatedButtonWidget(icon: FontAwesomeIcons.twitter, onTap: () {}),
        const SizedBox(
          width: 10.0,
        ),
        AnimatedButtonWidget(icon: FontAwesomeIcons.instagram, onTap: () {}),
      ],
    );
  }
}

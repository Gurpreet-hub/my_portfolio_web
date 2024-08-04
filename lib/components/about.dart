import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/utils/animated_container.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth < 1600
                ? context.screenWidth * 0.3
                : context.screenWidth * 0.2,
        height: 800,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.purple, width: 2.0)),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Image.asset('assets/developer.png'),
            const Text(
              "Gurpreet Kaur",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            const Text(
              "I am a Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0),
            ),
            const Wrap(
              runSpacing: 8.0,
              spacing: 8.0,
              alignment: WrapAlignment.center,
              children: [
                Chip(
                  side: BorderSide(color: Colors.green, width: 3),
                  label: Text(
                    "Flutter Developer",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(8.0),
                ),
                Chip(
                  side: BorderSide(color: Colors.green, width: 3),
                  label: Text(
                    "App Developer",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(8.0),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            Wrap(
              runSpacing: 4.0,
              spacing: 4.0,
              children: [
                AnimatedContainerWidget(
                  icon: FontAwesomeIcons.githubAlt,
                  title: "GitHub",
                  description: "gurpreet8194-github",
                  onTap: () {},
                ),
                AnimatedContainerWidget(
                  icon: FontAwesomeIcons.linkedin,
                  title: "LinkedIn",
                  description: "Gurpreet Dhillon",
                  onTap: () {},
                ),
                AnimatedContainerWidget(
                  icon: FontAwesomeIcons.bitbucket,
                  title: "Bitbucket",
                  description: "@gurpreet-bitbucket",
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

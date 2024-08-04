import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatefulWidget {

  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        const Center(
          child: Text(
            "My Skills",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        commonSkillWidget("Programming Languages", [
          const Chip(
            label: Text("Dart"),
            backgroundColor: Colors.white,
          ),
          const Chip(
            label: Text("Java"),
            backgroundColor: Colors.white,
          ),
          const Chip(
            label: Text("JavaScript"),
            backgroundColor: Colors.white,
          )
        ]),
        commonSkillWidget("Other Tools", [
          const Chip(
            label: Text("Android Studio"),
            backgroundColor: Colors.white,
          ),
          const Chip(
            label: Text("Vs Code"),
            backgroundColor: Colors.white,
          ),
          const Chip(
            label: Text("Automation"),
            backgroundColor: Colors.white,
          )
        ]),
        commonSkillWidget("Git Version Tools", [
          const Chip(
            label: Text("Bit-Bucket"),
            backgroundColor: Colors.white,
          ),
          const Chip(
            label: Text("GitHub"),
            backgroundColor: Colors.white,
          ),
          const Chip(
            label: Text("GitLab"),
            backgroundColor: Colors.white,
          )
        ])
      ],
    );
  }

  commonSkillWidget(String title, List<Chip> chips) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
      child: Container(
        width: context.screenWidth < 600
            ? context.screenWidth * .9
            : (context.screenWidth * .8 / 3),
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                 const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: chips,
            )
          ],
        ),
      ),
    );
  }
}

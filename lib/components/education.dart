import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
   Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth * 0.5,
        height: 800,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.purple, width: 2.0)),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Education",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            Timeline.tileBuilder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                builder: TimelineTileBuilder.fromStyle(
                    itemCount: 4,
                    contentsAlign: ContentsAlign.alternating,
                    contentsBuilder: (context, index) {
                      return Card(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20 March, 2024",
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "Passed 10th ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Passed from Sant Soldier School with 90% percent marks",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

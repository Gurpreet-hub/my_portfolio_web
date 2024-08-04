import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContainerWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final GestureTapCallback onTap;

  AnimatedContainerWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        onHover: (onHover) {
          setState(() {
            isHovering = onHover;
          });
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: isHovering ? Colors.grey.shade100 : Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                  color: isHovering ? Colors.black : Colors.transparent,
                  width: 2.0)),
          duration: const Duration(microseconds: 500),
          margin: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(8.0),
                    child: FaIcon(widget.icon),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Text(
                        widget.description,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0),
                      )
                    ],
                  )
                ]),
          ),
        ));
  }
}

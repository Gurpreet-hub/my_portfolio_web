import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedButtonWidget extends StatefulWidget {
  final IconData icon;
  final GestureTapCallback onTap;

  const AnimatedButtonWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  State<AnimatedButtonWidget> createState() => _AnimatedButtonWidgetState();
}

class _AnimatedButtonWidgetState extends State<AnimatedButtonWidget> {
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
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              border: Border.all(
                  color: isHovering ? Colors.black : Colors.transparent,
                  width: 2.0)),
          duration: const Duration(microseconds: 500),
          margin: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(widget.icon),
          ),
        ));
  }
}

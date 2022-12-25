import 'package:flutter/material.dart';

class AnimButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onClick;

  const AnimButton({super.key, required this.icon, required this.onClick});
  @override
  State<AnimButton> createState() => _AnimButtonState();
}

class _AnimButtonState extends State<AnimButton> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick();
      },
      onHover: (value) {
        setState(() {
          _hover = value;
        });
      },
      child: SizedBox(
        height: 38,
        width: 38,
        child: Padding(
          padding: _hover
              ? const EdgeInsets.only(bottom: 8.0)
              : const EdgeInsets.all(0),
          child: Icon(
            widget.icon,
            size: _hover ? 28 : 24,
            color: _hover
                ? const Color.fromARGB(255, 118, 238, 218)
                : Colors.white,
          ),
        ),
      ),
    );
  }
}

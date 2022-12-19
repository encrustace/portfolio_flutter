import 'package:flutter/material.dart';
import 'package:portfolio_flutter/main_provider.dart';
import 'package:provider/provider.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation sizeAnimation;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    sizeAnimation = Tween<double>(
            begin: 250.0, end: context.read<MainProvider>().getWidth - 190)
        .animate(animationController);
    colorAnimation = ColorTween(
            begin: Colors.red, end: const Color.fromARGB(255, 190, 219, 248))
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hi, my name is",
          style: TextStyle(
              color: Color.fromARGB(255, 118, 238, 218),
              letterSpacing: 2,
              fontSize: 18),
        ),
        Container(
          width: sizeAnimation.value,
          color: colorAnimation.value,
          padding: const EdgeInsets.all(16),
          child: const Text(
            "Imran Khan",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          "I build things for the mobile/web/IoT",
          style: TextStyle(
            color: Color.fromARGB(255, 190, 219, 248),
            letterSpacing: 2,
            fontSize: 68,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

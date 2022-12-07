import 'package:flutter/material.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          const SizedBox(
            width: 24,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 6, top: 6),
                child: Text(
                  "I",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8, left: 8),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 118, 238, 218),
                )),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 118, 238, 218),
                )),
              ),
            ],
          ),
          Expanded(child: Container()),
          Row(
            children: [
              const Text(
                "01.",
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 238, 218),
                  letterSpacing: 2,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          Row(
            children: [
              const Text(
                "02.",
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 238, 218),
                  letterSpacing: 2,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          Row(
            children: [
              const Text(
                "03.",
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 238, 218),
                  letterSpacing: 2,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Projects",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          Row(
            children: [
              const Text(
                "04.",
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 238, 218),
                  letterSpacing: 2,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          InkWell(
            child: Container(
              height: 36,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 118, 238, 218),
                ),
              ),
              child: const Center(
                child: Text(
                  "Resume",
                  style: TextStyle(
                    color: Color.fromARGB(255, 118, 238, 218),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
        ],
      ),
    );
  }
}

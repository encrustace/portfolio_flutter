import 'package:flutter/material.dart';
import 'package:portfolio_flutter/about.dart';
import 'package:portfolio_flutter/header_page.dart';
import 'package:portfolio_flutter/left_panel_page.dart';
import 'package:portfolio_flutter/main_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    context.read<MainProvider>().setHeightWidth(height, width);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 2, 12, 27),
              Color.fromARGB(255, 17, 34, 63),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: [
            const HeaderPage(),
            Row(
              children: [
                const LeftPanelPage(),
                SizedBox(
                  height: height - 80,
                  width: width - 100,
                  child: context.watch<MainProvider>().getSelectedPage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

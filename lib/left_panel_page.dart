import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftPanelPage extends StatelessWidget {
  const LeftPanelPage({
    Key? key,
  }) : super(key: key);

  Future<void> _launchUrl(url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: MediaQuery.of(context).size.height - 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              _launchUrl("https://github.com/encrustace");
            },
            icon: const Icon(
              FontAwesomeIcons.github,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.linkedin,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.reddit,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: 2,
            height: 130,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

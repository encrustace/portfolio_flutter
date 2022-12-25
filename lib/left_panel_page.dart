import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/anim_button.dart';
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
          AnimButton(
            icon: FontAwesomeIcons.github,
            onClick: () {
              _launchUrl("https://github.com/encrustace");
            },
          ),
          const SizedBox(
            height: 28,
          ),
          AnimButton(
            icon: FontAwesomeIcons.linkedin,
            onClick: () {
              _launchUrl("https://linkedin.com/in/encrustace/");
            },
          ),
          const SizedBox(
            height: 28,
          ),
          AnimButton(
            icon: FontAwesomeIcons.twitter,
            onClick: () {
              _launchUrl("https://twitter.com/encrustace/");
            },
          ),
          const SizedBox(
            height: 28,
          ),
          AnimButton(
            icon: FontAwesomeIcons.reddit,
            onClick: () {
              _launchUrl("https://reddit.com/user/encrustace");
            },
          ),
          const SizedBox(
            height: 28,
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

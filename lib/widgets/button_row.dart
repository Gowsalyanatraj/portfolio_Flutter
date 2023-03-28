import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });

  get url => url;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () {
                    launch('https://facebook.com');
                  },
                  icon: Image.asset(
                    'assets/facebook.png',
                    height: 15,
                    width: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {
                    launch('https://instagram.com');
                  },
                  icon: Image.asset(
                    'assets/instagram.png',
                    height: 15,
                    width: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {
                    launch('https://twitter.com');
                  },
                  icon: Image.asset(
                    'assets/twitter.png',
                    height: 15,
                    width: 15,
                  ),
                  label: Text('')),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

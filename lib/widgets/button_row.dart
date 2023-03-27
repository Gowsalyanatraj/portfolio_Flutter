import 'package:flutter/material.dart';


class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });

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
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/facebook.png',
                    height: 15,
                    width: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/instagram.png',
                    height: 15,
                    width: 15,
                  ),
                  label: Text('')),
              TextButton.icon(
                  onPressed: () {},
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
}

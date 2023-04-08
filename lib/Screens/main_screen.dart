import 'package:flutter/material.dart';
import 'package:portfolio/utils/util.dart';
import 'package:portfolio/widgets/button_row.dart';
import 'package:portfolio/widgets/contact_button.dart';

import '../responsive/desktop_body.dart';
import '../responsive/mobile_body.dart';
import '../responsive/responsive_layout.dart';
import '../widgets/body.dart';

class Portfolio extends StatelessWidget {
  get url => url;
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100,
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                    'https://fastly.picsum.photos/id/64/4326/2884.jpg?hmac=9_SzX666YRpR_fOyYStXpfSiJ_edO3ghlSRnH2w09Kg'),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'Gowsalya',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              launchMailto();
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
                child: SizedBox(height: 59, child: ButtonRow()),
              )),
        ],
      ),
    );
  }
}

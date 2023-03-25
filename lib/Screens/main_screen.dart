import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(width: 5),
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
            
          )
        ],
      ),
    );
  }
}

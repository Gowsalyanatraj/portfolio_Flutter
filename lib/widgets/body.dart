import 'package:flutter/material.dart';
import 'package:portfolio/utils/util.dart';
import 'package:portfolio/widgets/contact_button.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Exploring the Design thinks',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/1/400/300'
    },
    {
      'title': 'Nature of the design',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/seed/picsum/400/300'
    },
    {
      'title': 'Connect',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Illustration',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/400/300'
    },
    {
      'title': 'Bingo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 26, 35, 77),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                            opacity: 0.5,
                            child: Image.asset('assets/image.jpg')),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(right: 70, top: 200),
                                  child: Text(
                                    ' I \'m Gowsalya Natraj. \n A Flutter developer \n and UI designer',
                                    style: TextStyle(
                                        fontSize: 30.5, color: Colors.white),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 100, vertical: 60),
                                      child: ContactButton(
                                        buttonText: 'Drop me a line',
                                        icon: const Icon(Icons.mail_outline),
                                        onPressed: () {
                                          launchMailto();
                                        },
                                      ),
                                    ))
                              ]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70, bottom: 20),
              child: Text(
                'My Projects',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 70, bottom: 20),
              child: ListView.builder(
                itemCount: projectsList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Color.fromARGB(255, 98, 129, 173),
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.launch),
                                title: Text(projectsList[index]['title']!),
                                subtitle:
                                    Text(projectsList[index]['subtitle']!),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.network(
                                    projectsList[index]['image']!),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ))
          ],
        )),
        const SizedBox(width: 100),
      ],
    );
  }
}

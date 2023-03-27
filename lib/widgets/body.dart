import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact_button.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Exploring the Adventure',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/200/400/300'
    },
    {
      'title': 'Earth Behind',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connect',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Harvesting the technology',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
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
              color: Colors.white,
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
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text(
                                    ' I \'m Gowsalya Natraj. \n A Flutter developer \n and UI designer',
                                    style: TextStyle(
                                        fontSize: 40.5, color: Colors.blueGrey),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 100, vertical: 60),
                                      child: ContactButton(
                                        buttonText: 'Drop me a line',
                                        icon: Icon(Icons.mail_outline),
                                        onPressed: () {},
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
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, bottom: 20),
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
                    color: Colors.white,
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.list_alt),
                                title: Text(projectsList[index]['title']!),
                                subtitle:
                                    Text(projectsList[index]['subtitle']!),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.network(
                                    projectsList[index]['image']!),
                              ),
                              SizedBox(
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
        SizedBox(width: 100),
      ],
    );
  }
}

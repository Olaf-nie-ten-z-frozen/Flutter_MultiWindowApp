import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({Key? key}) : super(key: key);

  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Column(children: [
          Image.asset('assets/images/news_unicornblackhole.png'),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            child: const Text(
              'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
              onPressed: () {
                debugPrint('Text Buttopn Pressed');
              },
              child: const Text('Text Button')),
          Row(children: [
            Icon(Icons.local_fire_department),
          ])
        ]));
  }
}

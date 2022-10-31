import 'package:flutter/material.dart';
import 'package:flutter_application_2/homePage.dart';
import 'config/primaryBlack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: const HomePage(),
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: const Icon(Icons.add)),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

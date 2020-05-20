import 'package:flutter/material.dart';

import 'pages/initial_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SanFrancisco',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: InitialPage(),
    );
  }
}

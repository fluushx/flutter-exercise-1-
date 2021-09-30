import 'package:first_app_flutter/src/pages/counterPage.dart';
import 'package:first_app_flutter/src/pages/homePage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(
        child: ContadorPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

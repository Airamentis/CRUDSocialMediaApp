import 'package:TestSocialMediaApp/presentation/screens/post_screen/post_screen_main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TESTSOCIALMEDIAAPP',
      theme: ThemeData(),
      home: PostScreen(),
      routes: {},
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => PostScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => PostScreen());
      },
    );
  }
}

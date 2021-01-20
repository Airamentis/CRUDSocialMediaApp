import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  static const routeName = '/post_screen';
  static const title = 'post screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'this is the post screen.',
        ),
      ),
    );
  }
}

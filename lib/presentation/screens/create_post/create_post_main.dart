import 'package:flutter/material.dart';

class CreatePostMain extends StatelessWidget {
  static const routeName = '/create_post_main';
  static const title = 'create post main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'this is the create post main.',
        ),
      ),
    );
  }
}

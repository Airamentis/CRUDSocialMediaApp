import 'package:TestSocialMediaApp/presentation/screens/post_screen/posts.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  static const routeName = '/post_screen';
  static const title = 'Posts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: buildPosts(),
      floatingActionButton: RaisedButton(
        padding: const EdgeInsets.all(20),
        onPressed: () {},
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
    );
  }
}

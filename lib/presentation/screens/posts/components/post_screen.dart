import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:TestSocialMediaApp/presentation/screens/posts/post_screen_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'posts.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            PostScreenMain.title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: buildPosts(context),
      floatingActionButton: RaisedButton(
        padding: const EdgeInsets.all(20),
        onPressed: () {
          context.read<PostScreenBloc>()..add(CreatePostPressed());
        },
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
    );
  }
}

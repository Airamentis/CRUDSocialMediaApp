import 'package:TestSocialMediaApp/domain/classes/posts/posts.dart';
import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:TestSocialMediaApp/presentation/blocs/selected_post/selected_post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedPostScreen extends StatelessWidget {
  const SelectedPostScreen({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: RaisedButton(
        shape: CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            Icons.delete_forever,
            color: Colors.black,
            size: 35,
          ),
        ),
        onPressed: () {
          context.read<SelectedPostBloc>()
            ..add(
              PostDeleted(postID: post.id),
            );
          context.read<PostScreenBloc>()..add(ViewPostClosed());
        },
        color: Colors.white,
      ),
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox(),
        title: Center(
          child: Text(
            post.title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              context.read<PostScreenBloc>()..add(ViewPostClosed());
              print('closed');
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * .85,
          height: MediaQuery.of(context).size.height * .60,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              post.body,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

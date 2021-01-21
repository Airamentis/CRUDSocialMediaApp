import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:TestSocialMediaApp/presentation/screens/post_screen/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  static const routeName = '/post_screen';
  static const title = 'Posts';

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  // ignore: close_sinks
  PostScreenBloc postScreenBloc;
  @override
  void initState() {
    postScreenBloc = PostScreenBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => postScreenBloc,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              PostScreen.title,
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
      ),
    );
  }
}

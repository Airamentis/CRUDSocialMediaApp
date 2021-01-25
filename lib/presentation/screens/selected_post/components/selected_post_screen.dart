import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedPostScreen extends StatelessWidget {
  const SelectedPostScreen({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

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
        onPressed: () {},
        color: Colors.white,
      ),
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox(),
        title: Center(
          child: Text(
            title,
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
              'Post Body.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/create_post.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  TextEditingController titleController;
  TextEditingController bodyController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    titleController = TextEditingController();
    bodyController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    bodyController.dispose();
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        leading: SizedBox(),
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              context.read<PostScreenBloc>()..add(CreatePostClosed());
            },
          ),
        ],
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: buildCreatePost(
        context: context,
        bodyController: bodyController,
        formKey: formKey,
        titleController: titleController,
      ),
    );
  }
}

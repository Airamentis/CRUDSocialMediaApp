import 'package:TestSocialMediaApp/domain/classes/posts/post_model.dart';
import 'package:TestSocialMediaApp/presentation/blocs/create_post/create_post_bloc.dart';
import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget buildCreatePost({
  @required BuildContext context,
  @required GlobalKey<FormState> formKey,
  @required TextEditingController titleController,
  @required TextEditingController bodyController,
  @required int listLenght,
}) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width * .75,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                color: Colors.blueGrey[100],
                child: TextFormField(
                  controller: titleController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Post Title',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your post title';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                color: Colors.blueGrey[100],
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  controller: bodyController,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Post Body',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your post body';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: RaisedButton(
                  onPressed: () {
                    final isValid = formKey.currentState.validate();
                    FocusScope.of(context).unfocus();

                    if (isValid) {
                      context.read<CreatePostBloc>()
                        ..add(
                          PostCreated(
                            createdPost: Post(
                              userID: 2,
                              id: listLenght + 1,
                              title: titleController.text,
                              body: bodyController.text,
                            ),
                          ),
                        );
                      context.read<PostScreenBloc>()
                        ..add(
                          CreatePostClosed(),
                        );
                      context.read<PostScreenBloc>()
                        ..add(
                          NewPostCreated(
                            newPost: Post(
                              userID: 2,
                              id: listLenght + 1,
                              title: titleController.text,
                              body: bodyController.text,
                            ),
                          ),
                        );
                    }
                  },
                  child: Text('Post'),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

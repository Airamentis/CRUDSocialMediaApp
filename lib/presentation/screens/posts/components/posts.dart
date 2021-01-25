import 'package:TestSocialMediaApp/domain/classes/posts/posts.dart';
import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:TestSocialMediaApp/presentation/widgets/post_display_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget buildPosts({
  BuildContext context,
  @required List<Post> postData,
}) {
  return ListView.builder(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    addAutomaticKeepAlives: true,
    itemCount: postData.length,
    itemBuilder: (context, index) {
      return PostDisplayCard(
        id: postData[index].id,
        userID: postData[index].userID,
        title: postData[index].title,
        onTap: () {
          context.read<PostScreenBloc>()
            ..add(
              PostCardPressed(
                postID: postData[index].id,
              ),
            );
        },
      );
    },
  );
}

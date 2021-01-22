import 'package:TestSocialMediaApp/infrastructure/injection/injection.dart';
import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:TestSocialMediaApp/presentation/widgets/post_display_widget.dart';

Widget buildPosts(BuildContext context) {
  return ListView.builder(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    addAutomaticKeepAlives: true,
    itemBuilder: (context, index) {
      return PostDisplayCard(
        onTap: () {
          getIt<PostScreenBloc>()
            ..add(
              PostCardPressed(postID: index + 1),
            );
        },
      );
    },
    itemCount: 5,
  );
}

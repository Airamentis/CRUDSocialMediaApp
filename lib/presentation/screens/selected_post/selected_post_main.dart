import 'package:TestSocialMediaApp/domain/classes/posts/posts.dart';
import 'package:TestSocialMediaApp/infrastructure/injection/injection.dart';
import 'package:TestSocialMediaApp/presentation/blocs/selected_post/selected_post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/selected_post_screen.dart';

class SelectedPostMain extends StatelessWidget {
  static const routeName = '/selected_post_main';
  static const title = 'Post title';

  final Post selectedPost;

  const SelectedPostMain({Key key, @required this.selectedPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SelectedPostBloc>()..add(Started()),
      child: BlocBuilder<SelectedPostBloc, SelectedState>(
        builder: (context, state) {
          return SelectedPostScreen(
            post: selectedPost,
          );
        },
      ),
    );
  }
}

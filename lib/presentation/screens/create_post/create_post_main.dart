import 'package:TestSocialMediaApp/infrastructure/injection/injection.dart';
import 'package:TestSocialMediaApp/presentation/blocs/create_post/create_post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_post_screen.dart';

class CreatePostMain extends StatelessWidget {
  static const routeName = '/create_post_main';
  static const title = 'Create New Post';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreatePostBloc>()..add(Started()),
      child: BlocBuilder<CreatePostBloc, CreatePostState>(
        builder: (context, state) {
          print(state);
          if (state is CreatePostInitial) {
            return CreatePostScreen(title: title);
          }
          return CreatePostScreen(title: title);
        },
      ),
    );
  }
}

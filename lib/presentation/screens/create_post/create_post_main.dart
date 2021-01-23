import 'package:TestSocialMediaApp/infrastructure/injection/injection.dart';
import 'package:TestSocialMediaApp/presentation/blocs/create_post/bloc/create_post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePostMain extends StatelessWidget {
  static const routeName = '/create_post_main';
  static const title = 'create post main';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreatePostBloc>()..add(Started()),
      child: BlocBuilder<CreatePostBloc, CreatePostState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Text(
                'this is the create post main.',
              ),
            ),
          );
        },
      ),
    );
  }
}

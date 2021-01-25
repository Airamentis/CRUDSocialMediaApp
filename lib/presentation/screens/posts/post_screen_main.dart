import 'package:TestSocialMediaApp/infrastructure/injection/injection.dart';
import 'package:TestSocialMediaApp/presentation/blocs/post_screen/post_screen_bloc.dart';
import 'package:TestSocialMediaApp/presentation/screens/create_post/create_post_main.dart';
import 'package:TestSocialMediaApp/presentation/screens/posts/components/post_screen.dart';
import 'package:TestSocialMediaApp/presentation/screens/selected_post/selected_post_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreenMain extends StatefulWidget {
  static const routeName = '/post_screen';
  static const title = 'Posts';

  @override
  _PostScreenMainState createState() => _PostScreenMainState();
}

class _PostScreenMainState extends State<PostScreenMain> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostScreenBloc>()..add(Started()),
      child: BlocBuilder<PostScreenBloc, PostScreenState>(
        builder: (context, state) {
          print(state);

          if (state is CreatePostInital) {
            return CreatePostMain(
              listLenght: state.listLenght,
            );
          } else if (state is ViewPostInitial) {
            return SelectedPostMain(
              selectedPost: state.selectedPost,
            );
          } else if (state is PostScreenLoaded) {
            return PostScreen(
              postData: state.posts,
            );
          } else {
            return PostScreen(
              postData: [],
            );
          }
        },
      ),
    );
  }
}

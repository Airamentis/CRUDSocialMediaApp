import 'dart:async';

import 'package:TestSocialMediaApp/domain/classes/posts/posts.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'posts_event.dart';
part 'posts_state.dart';

List examplePosts = [
  Post(userID: null, id: null, title: null, body: null),
  Post(userID: null, id: null, title: null, body: null),
  Post(userID: null, id: null, title: null, body: null),
  Post(userID: null, id: null, title: null, body: null),
];

@injectable
class SelectedPostBloc extends Bloc<SelectedPostEvent, SelectedState> {
  SelectedPostBloc() : super(PostsInitial());

  @override
  Stream<SelectedState> mapEventToState(
    SelectedPostEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_screen_event.dart';
part 'post_screen_state.dart';

class PostScreenBloc extends Bloc<PostScreenEvent, PostScreenState> {
  PostScreenBloc() : super(PostScreenInitial());

  @override
  Stream<PostScreenState> mapEventToState(
    PostScreenEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

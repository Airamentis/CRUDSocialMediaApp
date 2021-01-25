import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'selected_post_event.dart';
part 'selected_post_state.dart';

@injectable
class SelectedPostBloc extends Bloc<SelectedPostEvent, SelectedState> {
  SelectedPostBloc() : super(PostsInitial());

  @override
  Stream<SelectedState> mapEventToState(
    SelectedPostEvent event,
  ) async* {
    if (event is PostSelected) {
      yield SelectedPostInProgress();
    } else if (event is PostDeleted) {
      print('deleted post ${event.postID}!');
    }
  }
}

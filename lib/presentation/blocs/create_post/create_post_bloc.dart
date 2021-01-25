import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';

@injectable
class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  CreatePostBloc() : super(CreatePostInitial());

  @override
  Stream<CreatePostState> mapEventToState(
    CreatePostEvent event,
  ) async* {
    if (event is PostCreated) {
      print(event.title);
      print(event.body);
    }
  }
}

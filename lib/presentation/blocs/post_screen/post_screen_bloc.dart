import 'dart:async';

import 'package:TestSocialMediaApp/infrastructure/template/entity.dart';
import 'package:TestSocialMediaApp/infrastructure/template/repo.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'post_screen_event.dart';
part 'post_screen_state.dart';

@injectable
class PostScreenBloc extends Bloc<PostScreenEvent, PostScreenState> {
  final ITemplateRepo _templateRepo;
  PostScreenBloc(@Named.from(TemplateEntity) this._templateRepo) : super(PostScreenInitial());

  @override
  Stream<PostScreenState> mapEventToState(
    PostScreenEvent event,
  ) async* {
    if (event is Started) {
      await _templateRepo.save('morgan');
      await _templateRepo.delete(true);
      await _templateRepo.getAll();
      yield PostScreenInitial();
    } else if (event is PostCardPressed) {
      print(event.postID);
    } else if (event is CreatePostPressed) {
      print(state);
      yield CreatePostInital();
    } else if (event is CreatePostClosed) {
      yield PostScreenInitial();
    }
  }
}

import 'dart:async';

import 'package:TestSocialMediaApp/domain/classes/posts/posts.dart';
import 'package:TestSocialMediaApp/infrastructure/template/entity.dart';
import 'package:TestSocialMediaApp/infrastructure/template/repo.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'post_screen_event.dart';
part 'post_screen_state.dart';

List<Post> examplePosts = [
  Post(
    userID: 1,
    id: 1,
    title: 'Boys are rude',
    body: 'How can boys be such jerks??',
  ),
  Post(
    userID: 3,
    id: 2,
    title: 'Gaming Console!',
    body: 'Look at this new console I bought!',
  ),
  Post(
    userID: 1,
    id: 3,
    title: 'Books to recommend?',
    body: 'I\'m looking for a new book to read, any recommendations?',
  ),
  Post(
    userID: 4,
    id: 4,
    title: 'My life is great!',
    body: 'read the title ^',
  ),
];

@injectable
class PostScreenBloc extends Bloc<PostScreenEvent, PostScreenState> {
  final ITemplateRepo _templateRepo;
  PostScreenBloc(@Named.from(TemplateEntity) this._templateRepo)
      : super(
          PostScreenInitial(
            //TODO change once connected
            posts: examplePosts,
          ),
        );

  @override
  Stream<PostScreenState> mapEventToState(
    PostScreenEvent event,
  ) async* {
    if (event is Started) {
      await _templateRepo.save('morgan');
      await _templateRepo.delete(true);
      await _templateRepo.getAll();
      yield PostScreenInitial(
        //TODO change once connected
        posts: examplePosts,
      );
    } else if (event is PostCardPressed) {
      print(event.postID);
    } else if (event is CreatePostPressed) {
      print(state);
      yield CreatePostInital();
    } else if (event is CreatePostClosed) {
      yield PostScreenInitial(
        //TODO change once connected
        posts: examplePosts,
      );
    }
  }
}

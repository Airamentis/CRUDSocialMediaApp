import 'dart:async';

import 'package:TestSocialMediaApp/domain/classes/posts/post_model.dart';
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
  PostScreenBloc(@Named.from(TemplateEntity) this._templateRepo)
      : super(
          PostScreenInitial(
              // posts: [],
              ),
        );

  List<Post> _postList = [];

  @override
  Stream<PostScreenState> mapEventToState(
    PostScreenEvent event,
  ) async* {
    if (event is Started) {
      _postList = await _templateRepo.getAll();
      print(_postList);
      yield PostScreenLoaded(
        posts: _postList,
      );
    } else if (event is PostCardPressed) {
      print(event.postID);
      int selectedPostIndex = _postList.indexWhere((post) => post.id == event.postID);
      yield ViewPostInitial(
        selectedPost: _postList[selectedPostIndex],
      );
    } else if (event is CreatePostPressed) {
      print(state);

      yield CreatePostInital(listLenght: _postList.length);
    } else if (event is CreatePostClosed) {
      yield PostScreenLoaded(
        posts: _postList,
      );
    } else if (event is ViewPostClosed) {
      yield PostScreenLoaded(
        posts: _postList,
      );
    } else if (event is NewPostCreated) {
      _postList.add(event.newPost);
    } else if (event is SelectedPostDeleted) {
      print(event.postID);
      _postList.removeWhere((post) {
        return post.id == event.postID;
      });
      print(_postList.length);
      yield PostScreenLoaded(posts: _postList);
    }
  }
}

part of 'post_screen_bloc.dart';

@immutable
abstract class PostScreenState {}

class PostScreenInitial extends PostScreenState {
  final List<Post> posts;

  PostScreenInitial({@required this.posts});
}

class ViewPostInitial extends PostScreenState {}

class CreatePostInital extends PostScreenState {}

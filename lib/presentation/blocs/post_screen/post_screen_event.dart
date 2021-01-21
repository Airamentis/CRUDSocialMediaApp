part of 'post_screen_bloc.dart';

@immutable
abstract class PostScreenEvent {
  const PostScreenEvent();
}

class PostCardPressed extends PostScreenEvent {
  List<Object> get props => [];
}

class CreatePostPressed extends PostScreenEvent {
  List<Object> get props => [];
}

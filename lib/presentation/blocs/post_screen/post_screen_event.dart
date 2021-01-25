part of 'post_screen_bloc.dart';

@immutable
abstract class PostScreenEvent {
  const PostScreenEvent();
}

class Started extends PostScreenEvent {
  List<Object> get props => [];
}

class PostCardPressed extends PostScreenEvent {
  final int postID;

  PostCardPressed({@required this.postID});
  List<Object> get props => [];
}

class CreatePostPressed extends PostScreenEvent {
  List<Object> get props => [];
}

class CreatePostClosed extends PostScreenEvent {
  List<Object> get props => [];
}

class ViewPostClosed extends PostScreenEvent {
  List<Object> get props => [];
}

class NewPostCreated extends PostScreenEvent {
  final Post newPost;

  NewPostCreated({@required this.newPost});
  List<Object> get props => [];
}

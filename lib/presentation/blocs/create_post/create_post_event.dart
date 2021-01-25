part of 'create_post_bloc.dart';

@immutable
abstract class CreatePostEvent {}

class Started extends CreatePostEvent {
  List<Object> get props => [];
}

class PostCreated extends CreatePostEvent {
  final Post createdPost;

  PostCreated({@required this.createdPost});
  List<Object> get props => [];
}

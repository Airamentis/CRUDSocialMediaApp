part of 'create_post_bloc.dart';

@immutable
abstract class CreatePostEvent {}

class Started extends CreatePostEvent {
  List<Object> get props => [];
}

class PostCreated extends CreatePostEvent {
  final String title;
  final String body;

  PostCreated({@required this.title, @required this.body});
  List<Object> get props => [];
}

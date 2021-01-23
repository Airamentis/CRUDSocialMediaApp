part of 'create_post_bloc.dart';

@immutable
abstract class CreatePostEvent {}

class Started extends CreatePostEvent {
  List<Object> get props => [];
}

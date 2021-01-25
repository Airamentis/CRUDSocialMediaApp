part of 'selected_post_bloc.dart';

@immutable
abstract class SelectedPostEvent {}

class Started extends SelectedPostEvent {
  List<Object> get props => [];
}

class PostSelected extends SelectedPostEvent {
  final int postID;
  PostSelected({
    @required this.postID,
  });
  List<Object> get props => [];
}

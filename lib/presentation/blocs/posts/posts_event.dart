part of 'posts_bloc.dart';

@immutable
abstract class SelectedPostEvent {}

class Started extends SelectedPostEvent {
  List<Object> get props => [];
}

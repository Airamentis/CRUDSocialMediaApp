part of 'selected_post_bloc.dart';

@immutable
abstract class SelectedState {}

class PostsInitial extends SelectedState {}

class SelectedPostInProgress extends SelectedState {}

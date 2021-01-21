import 'package:flutter/material.dart';
import 'package:TestSocialMediaApp/presentation/widgets/post_display_widget.dart';

Widget buildPosts() {
  return ListView.builder(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    addAutomaticKeepAlives: true,
    itemBuilder: (context, index) {
      return PostDisplayCard();
    },
    itemCount: 5,
  );
}

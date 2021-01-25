import 'package:flutter/material.dart';

class ViewPostCard extends StatelessWidget {
  final String userId;
  final String id;
  final String postTitle;
  final String postBody;

  ViewPostCard({
    @required this.postBody,
    @required this.userId,
    @required this.id,
    @required this.postTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.height * .85,
      child: Text(postBody),
    );
  }
}

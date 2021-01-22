import 'package:flutter/material.dart';

class ViewPostCard extends StatelessWidget {
  final String postBody;

  ViewPostCard({@required this.postBody});

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

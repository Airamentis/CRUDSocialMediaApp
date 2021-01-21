import 'package:flutter/material.dart';

class PostDisplayCard extends StatelessWidget {
  const PostDisplayCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * .75,
        height: MediaQuery.of(context).size.height * .20,
        child: Center(
          child: Text('Post Title'),
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:TestSocialMediaApp/domain/classes/posts/post_model.dart';
import 'package:TestSocialMediaApp/infrastructure/template/repo.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@named
@Injectable(as: ITemplateRepo)
class TemplateSource implements ITemplateRepo {
  @override
  Future<void> template() {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(bool force) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getAll() async {
    final res = await http.get('http://jsonplaceholder.typicode.com/posts');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = [];
      body.forEach((item) {
        final post = Post.fromMap(Map<String, dynamic>.from(item));
        posts.add(post);
      });
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }

  @override
  Future<void> save(String key) {
    // TODO: implement save
    throw UnimplementedError();
  }
}

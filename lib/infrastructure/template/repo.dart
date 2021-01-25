import 'package:TestSocialMediaApp/domain/classes/posts/post_model.dart';

abstract class ITemplateRepo {
  Future<void> template();
  Future<List<Post>> getAll();
  Future<void> save(String key);
  Future<void> delete(bool force);
}

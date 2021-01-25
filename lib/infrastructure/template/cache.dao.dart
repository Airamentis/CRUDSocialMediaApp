import 'package:TestSocialMediaApp/domain/classes/posts/post_model.dart';
import 'package:TestSocialMediaApp/infrastructure/template/repo.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

class _Keys {
  static String get key => 'key';
}

@named
@Injectable(as: ITemplateRepo)
class TemplateCache implements ITemplateRepo {
  final _db = Hive.openBox('box-identifier');

  @override
  Future<void> template() {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(bool force) async {
    print('this is inside of cache!!! called delete this is the value: $force');
  }

  @override
  Future<List<Post>> getAll() {
    print('this is inside of cache!!! called getAll');
  }

  @override
  Future<void> save(String key) {
    print('this is inside of cache!!! called save this is the value: $key');
  }
}

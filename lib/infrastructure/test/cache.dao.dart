import 'package:TestSocialMediaApp/infrastructure/test/repo.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

class _Keys {
  static String get key => 'key';
}

@named
@Injectable(as: ITestRepo)
class TestCache implements ITestRepo {
  final _db = Hive.openBox('box-identifier');

  @override
  Future<void> test() {
    throw UnimplementedError();
  }
}

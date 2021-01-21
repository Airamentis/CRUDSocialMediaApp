import 'package:TestSocialMediaApp/infrastructure/test/repo.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: ITestRepo)
class TestSource implements ITestRepo {
  @override
  Future<void> test() {
    throw UnimplementedError();
  }
}

import 'package:TestSocialMediaApp/infrastructure/test/repo.dart';
import 'package:TestSocialMediaApp/infrastructure/test/source.dao.dart';
import 'package:injectable/injectable.dart';

import 'cache.dao.dart';

@named
@Singleton(as: ITestRepo)
class TestEntity implements ITestRepo {
  final ITestRepo _cache;
  final ITestRepo _source;

  const TestEntity(
    @Named.from(TestCache) this._cache,
    @Named.from(TestSource) this._source,
  );

  @override
  Future<void> test() async {
    await _cache.test();
    await _source.test();
  }
}

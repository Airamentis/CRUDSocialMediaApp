import 'package:TestSocialMediaApp/domain/classes/posts/post_model.dart';
import 'package:TestSocialMediaApp/infrastructure/template/repo.dart';
import 'package:TestSocialMediaApp/infrastructure/template/source.dao.dart';
import 'package:injectable/injectable.dart';

import 'cache.dao.dart';

@named
@Singleton(as: ITemplateRepo)
class TemplateEntity implements ITemplateRepo {
  final ITemplateRepo _cache;
  final ITemplateRepo _source;

  const TemplateEntity(
    @Named.from(TemplateCache) this._cache,
    @Named.from(TemplateSource) this._source,
  );

  @override
  Future<void> template() async {
    await _cache.template();
    await _source.template();
  }

  @override
  Future<void> delete(bool force) => _cache.delete(force);
  @override
  Future<List<Post>> getAll() => _source.getAll();
  @override
  Future<void> save(String key) => _cache.save(key);
}

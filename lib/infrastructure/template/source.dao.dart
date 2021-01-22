import 'package:TestSocialMediaApp/infrastructure/template/repo.dart';
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
  Future<void> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<void> save(String key) {
    // TODO: implement save
    throw UnimplementedError();
  }
}

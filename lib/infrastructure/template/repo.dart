abstract class ITemplateRepo {
  Future<void> template();
  Future<void> getAll();
  Future<void> save(String key);
  Future<void> delete(bool force);
}

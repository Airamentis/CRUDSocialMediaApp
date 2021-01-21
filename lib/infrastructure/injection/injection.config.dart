// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../template/repo.dart';
import '../test/repo.dart';
import '../../presentation/blocs/post_screen/post_screen_bloc.dart';
import '../template/cache.dao.dart';
import '../template/entity.dart';
import '../template/source.dao.dart';
import '../test/cache.dao.dart';
import '../test/entity.dart';
import '../test/source.dao.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<ITemplateRepo>(() => TemplateCache(),
      instanceName: 'TemplateCache');
  gh.factory<ITemplateRepo>(() => TemplateSource(),
      instanceName: 'TemplateSource');
  gh.factory<ITestRepo>(() => TestCache(), instanceName: 'TestCache');
  gh.factory<ITestRepo>(() => TestSource(), instanceName: 'TestSource');
  gh.factory<PostScreenBloc>(
      () => PostScreenBloc(get<ITemplateRepo>(instanceName: 'TemplateEntity')));

  // Eager singletons must be registered in the right order
  gh.singleton<ITemplateRepo>(
      TemplateEntity(get<ITemplateRepo>(instanceName: 'TemplateCache'),
          get<ITemplateRepo>(instanceName: 'TemplateSource')),
      instanceName: 'TemplateEntity');
  gh.singleton<ITestRepo>(
      TestEntity(get<ITestRepo>(instanceName: 'TestCache'),
          get<ITestRepo>(instanceName: 'TestSource')),
      instanceName: 'TestEntity');
  return get;
}

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable_configuration.config.dart';

@injectableInit
final GetIt getIt = GetIt.instance;
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

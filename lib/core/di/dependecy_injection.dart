import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependecy_injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
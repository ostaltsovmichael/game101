import 'package:account_entry/repository/raund_repository.dart';
import 'package:account_entry/repository/router_repository.dart';

import 'package:account_entry/repository/user_repository.dart';
import 'package:provider/provider.dart';

class ConectProvideresServises {
  final providers = [
    Provider(create: (_) => RouterRepository()),
    ChangeNotifierProvider(create: (_) => RaundRepository()),
    ChangeNotifierProvider(create: (_) => UserRepository()),
  ];
}



import 'package:route_tech_task/app/services/_interface/service_interface.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetService extends ServiceInterface {

  late final InternetConnectionChecker _internetConnectionChecker;

  @override
  Future<void> init() async {
    _internetConnectionChecker = InternetConnectionChecker();
  }

  @override
  Future<void> dispose() async {
    
  }

  Future<bool> get hasConnection => _internetConnectionChecker.hasConnection;
}
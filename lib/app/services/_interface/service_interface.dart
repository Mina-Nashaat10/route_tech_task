
abstract class ServiceInterface {

  bool get canDebug => true;

  Future<void> dispose();
  Future<void> init();
}
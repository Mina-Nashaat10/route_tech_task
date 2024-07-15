
import 'package:logger/logger.dart';

class Debugger {

  Debugger();

  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  void v(dynamic message) => _logger.t(message);
  void i(dynamic message) => _logger.i(message);
  void e(dynamic message) => _logger.e(message);
  void d(dynamic message) => _logger.d(message);
  void w(dynamic message) => _logger.w(message);
  void f(dynamic message) => _logger.f(message);

}
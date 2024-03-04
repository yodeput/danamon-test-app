import 'package:danamonTest/start.dart';
import 'package:talker/talker.dart';

typedef LoggerFunction = void Function(String message);

final LoggerFunction logDebug = talker.debug;
final LoggerFunction logInfo = talker.info;
final LoggerFunction logWarning = talker.warning;
final LoggerFunction logError = talker.error;

abstract class LoggerType {
  Talker get loggy;
  String get className;
}

/*
class TalkerLog {

  final String className;

  void info(dynamic text) {
    talker.info(
        '💡$className\n'
        '=================\n'
        '$text');
  }

   void warning(dynamic text) {
    talker.warning('🟡$className\n'
        '=================\n'
        '$text');
  }

   void error(dynamic text) {
    talker.error('🔴 $className\n'
        '=================\n'
        '$text');
  }

   void critical(dynamic text) {
    talker.critical('🚧 $className\n'
        '=================\n'
        '$text');
  }

   void success(dynamic text) {
    talker.info('🟢 $className\n'
        '=================\n'
        '$text');
  }
}*/

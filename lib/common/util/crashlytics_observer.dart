import 'package:talker/talker.dart';

class CrashlyticsTalkerObserver extends TalkerObserver {
  CrashlyticsTalkerObserver();

  @override
  void onError(err) {
    // FirebaseCrashlytics.instance.recordError(
    //   err.error,
    //   err.stackTrace,
    //   reason: err.message,
    // );
  }

  @override
  void onException(err) {
    // FirebaseCrashlytics.instance.recordError(
    //   err.exception,
    //   err.stackTrace,
    //   reason: err.message,
    // );
  }
}

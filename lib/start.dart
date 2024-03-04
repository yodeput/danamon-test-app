import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/app/app.dart';
import 'package:danamonTest/common/app/di.dart';
import 'package:danamonTest/common/util/crashlytics_observer.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:talker/talker.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_settings.dart';

void start() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: const TalkerBlocLoggerSettings(
      enabled: true,
      printEventFullData: false,
      printStateFullData: false,
      printChanges: true,
      printClosings: true,
      printCreations: true,
      printEvents: true,
      printTransitions: true,
      /*// If you want log only AuthBloc transitions
      transitionFilter: (bloc, transition) =>
          bloc.runtimeType.toString() == 'AuthBloc',
      // If you want log only AuthBloc events
      eventFilter: (bloc, event) => bloc.runtimeType.toString() == 'AuthBloc',*/
    ),
  );

  _initGoogleFonts();
  await initAppModule();
  await initializeDateFormatting('id', null);
  runApp(const ScalableFlutterApp());
}

Talker get talker => Talker(
      observer: CrashlyticsTalkerObserver(),
      settings: TalkerSettings(
        enabled: true,
      ),
      logger: TalkerLogger(
        output: debugPrint,
        formatter: const ColoredLoggerFormatter(),
        settings: TalkerLoggerSettings(enableColors: true),
      ),
    );

// void _initLoggy() {
//   Loggy.initLoggy(
//     logOptions: const LogOptions(
//       LogLevel.all,
//       stackTraceLevel: LogLevel.warning,
//     ),
//     logPrinter: const PrettyPrinter(),
//   );
// }

void _initGoogleFonts() {
  //GoogleFonts.config.allowRuntimeFetching = true;

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}

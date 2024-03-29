import 'package:flutter/material.dart';
import 'package:danamonTest/common/app/di.dart';
import 'package:danamonTest/common/app/style.dart';
import 'package:danamonTest/common/navigation/router.dart';

class ScalableFlutterApp extends StatelessWidget {
  const ScalableFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DI(
      child: MaterialApp.router(
        title: 'Scalable Flutter App Starter',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}

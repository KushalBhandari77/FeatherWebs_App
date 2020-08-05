import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'homepage.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';




void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xFFFFB74D));
    return MaterialApp(
      title: 'FeatherWebs App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Recursive',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),

    );
  }
}


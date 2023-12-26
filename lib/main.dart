import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:groomely/src/constants/app_text_theme.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/routing/app_router.dart';
import 'package:groomely/src/routing/routing_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: colorScaffold,
      statusBarBrightness: Brightness.light,
    ),
  );

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen(
        (LogRecord record) {
          if (kDebugMode) {
            print(
              '${record.level.name}@${record.loggerName}: ${record.time}: ${record.message}',
            );
          }
        },
      );

      runApp(
        const ProviderScope(
          child: GroomelyApp(),
        ),
      );
    },
    (Object error, StackTrace stack) async {
      exit(1);
    },
  );
}

class GroomelyApp extends StatelessWidget {
  const GroomelyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groomely',
      builder: (BuildContext context, Widget? widget) {
        Widget error = const Text('...rendering error...');
        if (widget is Scaffold || widget is Navigator) {
          error = Scaffold(body: Center(child: error));
        }
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
        if (widget != null) return widget;
        throw ('widget is null');
      },
      theme: ThemeData(
        useMaterial3: true,
        textTheme: tekoInterTextTheme,
        scaffoldBackgroundColor: colorScaffold,
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorGoldenYellow,
          primary: colorGoldenYellow,
          secondary: colorPrimaryBlack,
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: initialScreen,
      onGenerateRoute: generateRoutes,
    );
  }
}

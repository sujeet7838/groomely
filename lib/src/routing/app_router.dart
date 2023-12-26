import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groomely/src/features/app_home/presentation/app_home_screen.dart';
import 'package:groomely/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:groomely/src/features/authentication/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:groomely/src/features/onboarding/presentation/splash_screen/splash_screen.dart';
import 'package:groomely/src/features/onboarding/presentation/welcome_screen/welcome_screen.dart';
import 'package:groomely/src/routing/routing_config.dart';

Route<dynamic> generateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case splashScreen:
      return CupertinoPageRoute<dynamic>(
        builder: (BuildContext context) => const SplashScreen(),
      );

    case welcomeScreen:
      return CupertinoPageRoute<dynamic>(
        builder: (BuildContext context) => const WelcomeScreen(),
      );

    case signInScreen:
      return CupertinoPageRoute<dynamic>(
        builder: (BuildContext context) => const SignInScreen(),
      );

    case signUpScreen:
      return CupertinoPageRoute<dynamic>(
        builder: (BuildContext context) => const SignUpScreen(),
      );

    case appHomeScreen:
      return CupertinoPageRoute<dynamic>(
        builder: (BuildContext context) => const AppHomeScreen(),
      );

    default:
      return CupertinoPageRoute<dynamic>(
        builder: (BuildContext context) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${routeSettings.name}',
            ),
          ),
        ),
      );
  }
}

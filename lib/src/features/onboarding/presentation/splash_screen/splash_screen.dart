import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/routing/routing_config.dart';
import 'package:groomely/src/utils/device_size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).popAndPushNamed(welcomeScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen_background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: deviceSizeConfig.blockSizeVertical * 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/branding/groomely_logo.png',
                  height: 85.0,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'GROOMELY',
                      style: GoogleFonts.sanchez(
                        color: colorGoldenYellow,
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      'APPOINTMENTS MADE EASY',
                      style: GoogleFonts.teko(
                        color: Colors.white,
                        fontSize: 15.0,
                        letterSpacing: 2.25,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

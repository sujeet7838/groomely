import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomely/src/common_widgets/password_field.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/routing/routing_config.dart';
import 'package:groomely/src/utils/device_size_config.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: deviceSizeConfig.blockSizeVertical * 85.0,
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 0.0,
                left: 32.0,
                right: 32.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: deviceSizeConfig.blockSizeVertical * 5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'GROOMELY',
                              style: GoogleFonts.sanchez(
                                color: colorGoldenYellow,
                                fontSize: 25.0,
                                letterSpacing: 2.0,
                              ),
                            ),
                            Text(
                              'APPOINTMENTS MADE EASY',
                              style: GoogleFonts.teko(
                                color: colorPrimaryBlack,
                                fontSize: 18.0,
                                letterSpacing: 2.25,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: deviceSizeConfig.blockSizeVertical * 4.0,
                  ),
                  Text(
                    'Welcome\nBack',
                    style: GoogleFonts.teko(
                      color: colorPrimaryBlack,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w500,
                      height: 1.1,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorRadius: Radius.circular(0.8),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const PasswordField(),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          showMessageDialog(context);
                        },
                        child: SvgPicture.asset(
                          'assets/icons/instagram_logo.svg',
                          height: 25.0,
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          showMessageDialog(context);
                        },
                        child: SvgPicture.asset(
                          'assets/icons/facebook_logo.svg',
                          height: 25.0,
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          showMessageDialog(context);
                        },
                        child: SvgPicture.asset(
                          'assets/icons/google_logo.svg',
                          height: 25.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: deviceSizeConfig.blockSizeVertical * 15.0,
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 16.0,
                left: 32.0,
                right: 32.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        appHomeScreen,
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorPrimaryBlack,
                      foregroundColor: Colors.white,
                      elevation: 0.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      minimumSize: Size(
                        double.infinity,
                        deviceSizeConfig.blockSizeVertical * 6.5,
                      ),
                      textStyle: GoogleFonts.inter(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                      ),
                    ),
                    child: const Text(
                      'Sign In',
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          showMessageDialog(context);
                        },
                        child: Text(
                          'Forgot Password?',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    decoration: TextDecoration.underline,
                                    color: colorPrimaryBlack,
                                    fontSize: 15.0,
                                  ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(signUpScreen);
                        },
                        child: Text(
                          'Sign Up',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    decoration: TextDecoration.underline,
                                    color: colorPrimaryBlack,
                                    fontSize: 15.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

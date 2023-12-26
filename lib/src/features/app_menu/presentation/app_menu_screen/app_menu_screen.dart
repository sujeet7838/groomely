import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class AppMenuScreen extends StatelessWidget {
  const AppMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFBD18D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 110.0,
            bottom: 24.0,
            left: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showMessageDialog(context);
                },
                child: Container(
                  height: 62.0,
                  width: 62.0,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFEF5E5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/people_usplash.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: const Color(0XFFFEF5E5),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(
                      100.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 54.0,
                ),
                child: Text(
                  'Neil Patrick Harris',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 24.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(viewProfileScreen);
                  showMessageDialog(context);
                },
                child: Text(
                  'View Profile',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                        color: const Color(0XFFC79545),
                      ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(editProfileScreen);
                  showMessageDialog(context);
                },
                child: Text(
                  'Edit Profile',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 21.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(editProfileScreen);
                  showMessageDialog(context);
                },
                child: Text(
                  'Offers & Coupons',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 21.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(editProfileScreen);
                  showMessageDialog(context);
                },
                child: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 21.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(editProfileScreen);
                  showMessageDialog(context);
                },
                child: Text(
                  'Get Help',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 21.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //   signInScreen,
                  //   (Route<dynamic> route) => false,
                  // );
                  showMessageDialog(context);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      CupertinoIcons.square_arrow_left_fill,
                      color: colorPrimaryBlack,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Logout',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 21.0,
                            letterSpacing: 1.0,
                            color: colorPrimaryBlack,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

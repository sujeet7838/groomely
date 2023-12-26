import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    Key? key,
    required this.zoomDrawerController,
  }) : super(key: key);

  final ZoomDrawerController zoomDrawerController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.0,
      padding: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              ZoomDrawer.of(context)?.toggle();
            },
            child: SvgPicture.asset(
              'assets/icons/drawer_icon.svg',
              height: 14.0,
            ),
          ),
          Text(
            'GROOMELY',
            style: GoogleFonts.sanchez(
              color: colorGoldenYellow,
              fontSize: 20.0,
              letterSpacing: 2.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              showMessageDialog(context);
            },
            child: const Icon(
              Icons.notifications_none_rounded,
              color: colorPrimaryBlack,
            ),
          ),
        ],
      ),
    );
  }
}

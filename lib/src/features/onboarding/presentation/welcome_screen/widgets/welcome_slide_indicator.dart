import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/device_size_config.dart';

class WelcomeSlideIndicator extends StatelessWidget {
  const WelcomeSlideIndicator({
    super.key,
    required this.deviceSizeConfig,
    required this.isActive,
  });

  final DeviceSizeConfig deviceSizeConfig;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceSizeConfig.blockSizeVertical * 0.68,
      width: isActive == true
          ? deviceSizeConfig.blockSizeHorizontal * 5.0
          : deviceSizeConfig.blockSizeHorizontal * 2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        // color: isActive == true
        //     ? Colors.deepOrange[600]
        //     : Colors.deepOrange[600]?.withOpacity(0.5),
        // color: isActive == true
        //     ? colorGoldenYellow
        //     : colorGoldenYellow.withOpacity(0.5),
        color: isActive == true
            ? colorGoldenYellow.withOpacity(0.9)
            : const Color(0XFFD9D9D9),
      ),
    );
  }
}

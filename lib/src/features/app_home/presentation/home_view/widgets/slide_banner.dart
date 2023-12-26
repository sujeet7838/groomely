import 'package:flutter/material.dart';
import 'package:groomely/src/utils/device_size_config.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class SlideBanner extends StatelessWidget {
  const SlideBanner({
    Key? key,
    required this.deviceSizeConfig,
    required this.imageUrl,
  }) : super(key: key);

  final DeviceSizeConfig deviceSizeConfig;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMessageDialog(context);
      },
      child: Container(
        // height: deviceSizeConfig.blockSizeVertical * 20.0,
        // width: deviceSizeConfig.blockSizeHorizontal * 80.0,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: NetworkImage(
          //     imageUrl,
          //   ),
          //   fit: BoxFit.cover,
          // ),
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}

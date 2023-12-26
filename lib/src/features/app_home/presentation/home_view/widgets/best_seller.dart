import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMessageDialog(context);
      },
      child: Container(
        height: 110.0,
        width: 110.0,
        margin: const EdgeInsets.only(
          right: 32.0,
        ),
        child: SvgPicture.asset(
          imageUrl,
          height: 110.0,
          width: 110.0,
        ),
      ),
    );
  }
}

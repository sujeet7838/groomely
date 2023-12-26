import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class MajorCategoryButton extends StatelessWidget {
  const MajorCategoryButton({
    Key? key,
    required this.iconUrl,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  final String iconUrl;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMessageDialog(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 11.0,
        ),
        decoration: BoxDecoration(
          color: colorLightGoldenYellow,
          borderRadius: BorderRadius.circular(8.0),
          border: isSelected == true
              ? Border.all(
                  color: colorGoldenYellow.withOpacity(0.5),
                  width: 1.5,
                )
              : Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              iconUrl,
              height: 40.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: colorPrimaryBlack,
                  ),
            )
          ],
        ),
      ),
    );
  }
}

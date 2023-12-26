import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class ServiceCategoryCard extends StatelessWidget {
  const ServiceCategoryCard({
    Key? key,
    required this.imageUrl,
    required this.serviceName,
  }) : super(key: key);

  final String imageUrl;
  final String serviceName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMessageDialog(context);
      },
      child: Container(
        height: 140.0,
        width: 110.0,
        margin: const EdgeInsets.only(
          right: 16.0,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              serviceName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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

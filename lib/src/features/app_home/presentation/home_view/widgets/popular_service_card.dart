import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class PopularServiceCard extends StatelessWidget {
  const PopularServiceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMessageDialog(context);
      },
      child: Container(
        width: 200.0,
        margin: const EdgeInsets.only(
          right: 16.0,
        ),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: colorLightGoldenYellow,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Haircut + Beard + Massage',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3.0,
                  ),
                  child: Icon(
                    CupertinoIcons.star_fill,
                    color: colorGoldenYellow.withOpacity(0.6),
                    size: 20.0,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  '4.84 (209.2K)',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 2.0,
                  ),
                  child: Icon(
                    CupertinoIcons.clock_fill,
                    color: colorGoldenYellow.withOpacity(0.6),
                    size: 20.0,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  '1 hr 5 mins',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '\$115.00',
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.25,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 1.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(1.0),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3.0,
                  ),
                  child: Icon(
                    CupertinoIcons.check_mark,
                    color: colorGoldenYellow.withOpacity(0.6),
                    size: 20.0,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Men's Haircut",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 2.0,
                  ),
                  child: Icon(
                    CupertinoIcons.check_mark,
                    color: colorGoldenYellow.withOpacity(0.6),
                    size: 20.0,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Beard Shape & Style",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 2.0,
                  ),
                  child: Icon(
                    CupertinoIcons.check_mark,
                    color: colorGoldenYellow.withOpacity(0.6),
                    size: 20.0,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  "10 min Head Massage",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

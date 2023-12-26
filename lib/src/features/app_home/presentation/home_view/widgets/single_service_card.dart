import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class SingleServiceCard extends StatelessWidget {
  const SingleServiceCard({
    Key? key,
    required this.imageUrl,
    required this.isFavorite,
  }) : super(key: key);

  final String imageUrl;
  final bool isFavorite;

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
        decoration: BoxDecoration(
          color: const Color(0XFFEFEFEF),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 110.0,
              padding: const EdgeInsets.all(
                12.0,
              ),
              decoration: BoxDecoration(
                color: colorLightGoldenYellow,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  isFavorite == true
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'ABCD Barber Shop',
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
                  Text(
                    'Loup City, Nebraska 68853, USA',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '\$50.00',
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: colorLightGoldenYellow,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 2.0,
                              ),
                              child: Icon(
                                CupertinoIcons.clock,
                                color: colorGoldenYellow.withOpacity(0.6),
                                size: 20.0,
                              ),
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              '1 hr 25 mins',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showMessageDialog(context);
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
                      minimumSize: const Size(
                        double.infinity,
                        40,
                      ),
                      textStyle: GoogleFonts.inter(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                      ),
                    ),
                    child: const Text(
                      'Book Now',
                    ),
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

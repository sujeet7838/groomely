import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/widgets/single_service_card.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    Key? key,
    required this.serviceTitle,
  }) : super(key: key);

  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  serviceTitle,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 24.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
                GestureDetector(
                  onTap: () {
                    showMessageDialog(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'More',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: colorPrimaryBlack,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 3.0,
                        ),
                        child: Icon(
                          Icons.arrow_right_rounded,
                          color: colorPrimaryBlack,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          SizedBox(
            height: 379.0,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 16.0,
              ),
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SingleServiceCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1622286342621-4bd786c2447c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  isFavorite: true,
                ),
                SingleServiceCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1503951914875-452162b0f3f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  isFavorite: false,
                ),
                SingleServiceCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1622296089863-eb7fc530daa8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  isFavorite: true,
                ),
                SingleServiceCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1622287162716-f311baa1a2b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80',
                  isFavorite: false,
                ),
                SingleServiceCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1622288432450-277d0fef5ed6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  isFavorite: true,
                ),
                SingleServiceCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1590540179852-2110a54f813a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  isFavorite: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

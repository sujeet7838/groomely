import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/widgets/popular_service_card.dart';
import 'package:groomely/src/utils/show_message_dialog.dart';

class PopularServicesSection extends StatelessWidget {
  const PopularServicesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
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
                      'Popular Services',
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
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
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
                height: 280.0,
                width: double.infinity,
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 32.0,
                    right: 16.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    PopularServiceCard(),
                    PopularServiceCard(),
                    PopularServiceCard(),
                    PopularServiceCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 16.0,
          color: const Color(0XFFD9D9D9),
        ),
      ],
    );
  }
}

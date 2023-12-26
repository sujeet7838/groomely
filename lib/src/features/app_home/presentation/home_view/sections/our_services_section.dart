import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/widgets/service_category_card.dart';

class OurServicesSection extends StatelessWidget {
  const OurServicesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 16.0,
          color: const Color(0XFFD9D9D9),
        ),
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
                child: Text(
                  'Our Services',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 24.0,
                        letterSpacing: 1.0,
                        color: colorPrimaryBlack,
                      ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 140.0,
                width: double.infinity,
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 32.0,
                    right: 16.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    ServiceCategoryCard(
                      imageUrl: 'assets/images/hair_cutting.png',
                      serviceName: 'Hair Cutting',
                    ),
                    ServiceCategoryCard(
                      imageUrl: 'assets/images/shaving.png',
                      serviceName: 'Shaving',
                    ),
                    ServiceCategoryCard(
                      imageUrl: 'assets/images/hair_styling.png',
                      serviceName: 'Hair Styling',
                    ),
                    ServiceCategoryCard(
                      imageUrl: 'assets/images/trimming.png',
                      serviceName: 'Trimming',
                    ),
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

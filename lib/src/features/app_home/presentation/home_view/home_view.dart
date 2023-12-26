import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/ad_banner_section.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/best_sellers_section.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/our_services_section.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/category_section.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/first_ad_banner_section.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/home_view_app_bar.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/home_view_search_bar.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/popular_services_section.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/sections/service_section.dart';
import 'package:groomely/src/utils/device_size_config.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.zoomDrawerController,
  });

  final ZoomDrawerController zoomDrawerController;

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    return ListView(
      children: <Widget>[
        HomeViewAppBar(
          zoomDrawerController: zoomDrawerController,
        ),
        const HomeViewSearchBar(),
        FirstAdBannerSection(
          deviceSizeConfig: deviceSizeConfig,
        ),
        const CategorySection(),
        const OurServicesSection(),
        const PopularServicesSection(),
        const ServiceSection(
          serviceTitle: 'Hair Cutting',
        ),
        const AdBannerSection(),
        const ServiceSection(
          serviceTitle: 'Shaving',
        ),
        const AdBannerSection(),
        const ServiceSection(
          serviceTitle: 'Hair Styling',
        ),
        const AdBannerSection(),
        const ServiceSection(
          serviceTitle: 'Trimming',
        ),
        const BestSellersSection(),
      ],
    );
  }
}

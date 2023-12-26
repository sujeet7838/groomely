import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/widgets/ad_banner.dart';
import 'package:groomely/src/features/onboarding/presentation/welcome_screen/widgets/welcome_slide_indicator.dart';
import 'package:groomely/src/utils/device_size_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BannerNoNotifier extends ChangeNotifier {
  int currentBannerNo = 0;

  void updateCurrentBannerNo(int bannerNo) {
    currentBannerNo = bannerNo;
    notifyListeners();
  }
}

final ChangeNotifierProvider<BannerNoNotifier> bannerNoProvider =
    ChangeNotifierProvider<BannerNoNotifier>(
  (ChangeNotifierProviderRef<BannerNoNotifier> ref) => BannerNoNotifier(),
);

class AdBannerSection extends ConsumerWidget {
  const AdBannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    int currentBannerNo = ref.watch(bannerNoProvider).currentBannerNo;

    return Container(
      width: double.infinity,
      // height: deviceSizeConfig.blockSizeVertical * 25.0,
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
      ),
      color: const Color(0XFFD9D9D9),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          CarouselSlider(
            items: <Widget>[
              AdBanner(
                deviceSizeConfig: deviceSizeConfig,
                imageUrl: 'assets/images/groomely_banner_01.jpg',
              ),
              AdBanner(
                deviceSizeConfig: deviceSizeConfig,
                imageUrl: 'assets/images/groomely_banner_02.jpg',
              ),
              AdBanner(
                deviceSizeConfig: deviceSizeConfig,
                imageUrl: 'assets/images/groomely_banner_03.jpg',
              ),
            ],
            options: CarouselOptions(
              height: deviceSizeConfig.blockSizeVertical * 19.0,
              initialPage: currentBannerNo,
              autoPlay: true,
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                ref
                    .read(bannerNoProvider.notifier)
                    .updateCurrentBannerNo(index);
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                WelcomeSlideIndicator(
                  deviceSizeConfig: deviceSizeConfig,
                  isActive: currentBannerNo == 0 ? true : false,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                WelcomeSlideIndicator(
                  deviceSizeConfig: deviceSizeConfig,
                  isActive: currentBannerNo == 1 ? true : false,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                WelcomeSlideIndicator(
                  deviceSizeConfig: deviceSizeConfig,
                  isActive: currentBannerNo == 2 ? true : false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

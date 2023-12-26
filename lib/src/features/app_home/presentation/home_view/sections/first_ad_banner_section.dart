import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/widgets/slide_banner.dart';
import 'package:groomely/src/features/onboarding/presentation/welcome_screen/widgets/welcome_slide_indicator.dart';
import 'package:groomely/src/utils/device_size_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SlideBannerNoNotifier extends ChangeNotifier {
  int currentSlideBannerNo = 0;

  void updateCurrentSlideBannerNo(int slideBannerNo) {
    currentSlideBannerNo = slideBannerNo;
    notifyListeners();
  }
}

final ChangeNotifierProvider<SlideBannerNoNotifier> slideBannerNoProvider =
    ChangeNotifierProvider<SlideBannerNoNotifier>(
  (ChangeNotifierProviderRef<SlideBannerNoNotifier> ref) =>
      SlideBannerNoNotifier(),
);

class FirstAdBannerSection extends ConsumerWidget {
  const FirstAdBannerSection({
    Key? key,
    required this.deviceSizeConfig,
  }) : super(key: key);

  final DeviceSizeConfig deviceSizeConfig;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    int currentSlideBannerNo =
        ref.watch(slideBannerNoProvider).currentSlideBannerNo;

    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 16.0,
          color: const Color(0XFFD9D9D9),
        ),
        Container(
          width: double.infinity,
          // height: deviceSizeConfig.blockSizeVertical * 25.0,
          padding: const EdgeInsets.only(
            top: 16.0,
            bottom: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CarouselSlider(
                items: <Widget>[
                  SlideBanner(
                    deviceSizeConfig: deviceSizeConfig,
                    imageUrl: 'assets/images/groomely_banner_01.jpg',
                  ),
                  SlideBanner(
                    deviceSizeConfig: deviceSizeConfig,
                    imageUrl: 'assets/images/groomely_banner_02.jpg',
                  ),
                  SlideBanner(
                    deviceSizeConfig: deviceSizeConfig,
                    imageUrl: 'assets/images/groomely_banner_03.jpg',
                  ),
                  SlideBanner(
                    deviceSizeConfig: deviceSizeConfig,
                    imageUrl: 'assets/images/groomely_banner_01.jpg',
                  ),
                  SlideBanner(
                    deviceSizeConfig: deviceSizeConfig,
                    imageUrl: 'assets/images/groomely_banner_02.jpg',
                  ),
                ],
                options: CarouselOptions(
                  height: deviceSizeConfig.blockSizeVertical * 19.0,
                  initialPage: currentSlideBannerNo,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    ref
                        .read(slideBannerNoProvider.notifier)
                        .updateCurrentSlideBannerNo(index);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    WelcomeSlideIndicator(
                      deviceSizeConfig: deviceSizeConfig,
                      isActive: currentSlideBannerNo == 0 ? true : false,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    WelcomeSlideIndicator(
                      deviceSizeConfig: deviceSizeConfig,
                      isActive: currentSlideBannerNo == 1 ? true : false,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    WelcomeSlideIndicator(
                      deviceSizeConfig: deviceSizeConfig,
                      isActive: currentSlideBannerNo == 2 ? true : false,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    WelcomeSlideIndicator(
                      deviceSizeConfig: deviceSizeConfig,
                      isActive: currentSlideBannerNo == 3 ? true : false,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    WelcomeSlideIndicator(
                      deviceSizeConfig: deviceSizeConfig,
                      isActive: currentSlideBannerNo == 4 ? true : false,
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

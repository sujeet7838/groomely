import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/features/app_home/presentation/appointments_view/appointments_view.dart';
import 'package:groomely/src/features/app_home/presentation/categories_view/categories_view.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/home_view.dart';
import 'package:groomely/src/features/app_menu/presentation/app_menu_screen/app_menu_screen.dart';
import 'package:groomely/src/utils/device_size_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewIndexNotifier extends ChangeNotifier {
  int currentViewIndex = 0;

  void updateCurrentViewIndex(int viewIndex) {
    currentViewIndex = viewIndex;
    notifyListeners();
  }
}

final ChangeNotifierProvider<ViewIndexNotifier> viewIndexProvider =
    ChangeNotifierProvider<ViewIndexNotifier>(
  (ChangeNotifierProviderRef<ViewIndexNotifier> ref) => ViewIndexNotifier(),
);

class AppHomeScreen extends ConsumerWidget {
  const AppHomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    int currentViewIndex = ref.watch(viewIndexProvider).currentViewIndex;

    final PageController viewController = PageController(
      initialPage: currentViewIndex,
    );

    final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

    return ZoomDrawer(
      controller: zoomDrawerController,
      borderRadius: 20.0,
      showShadow: true,
      angle: -12.0,
      slideWidth: deviceSizeConfig.screenWidth * 0.65,
      isRtl: false,
      mainScreenScale: 0.25,
      menuScreen: const AppMenuScreen(),
      menuBackgroundColor: const Color(0XFFFBD18D),
      mainScreen: Scaffold(
        body: SafeArea(
          child: PageView(
            controller: viewController,
            onPageChanged: (int viewIndex) {
              ref
                  .read(viewIndexProvider.notifier)
                  .updateCurrentViewIndex(viewIndex);
            },
            children: <Widget>[
              HomeView(
                zoomDrawerController: zoomDrawerController,
              ),
              const CategoriesView(),
              const AppointmentsView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentViewIndex,
          onTap: (int itemIndex) {
            ref
                .read(viewIndexProvider.notifier)
                .updateCurrentViewIndex(itemIndex);

            viewController.animateToPage(
              itemIndex,
              duration: const Duration(milliseconds: 750),
              curve: Curves.easeOutQuint,
            );
          },
          backgroundColor: colorPrimaryBlack,
          selectedItemColor: const Color(0XFFD5A353),
          unselectedItemColor: const Color(0XFF616161),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_grid_2x2),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar),
              label: 'Appointments',
            ),
          ],
        ),
      ),
    );
  }
}

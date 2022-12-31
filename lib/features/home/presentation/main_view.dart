import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/styles_manager.dart';
import 'package:news_app/features/home/presentation/pages/favorite_screen.dart';
import 'package:news_app/features/home/presentation/pages/home/home_screen.dart';
import 'package:news_app/features/home/presentation/pages/profile_screen.dart';
import 'package:news_app/features/home/presentation/pages/settings_screen.dart';

import '../../../config/assets_manager.dart';
import '../../../config/color_manager.dart';
import '../../../config/strings_manager.dart';
import '../../../config/values_manager.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = const [
    HomeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorManager.lightBlack,
        currentIndex: _currentPage,
        onTap: onTap,
        selectedLabelStyle: getRalewayRegularStyle(
          fontSize: AppSize.s15.sp,
          color: ColorManager.white,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconNavigationBar(image: IconAssets.homeOff),
            activeIcon: IconNavigationBar(image: IconAssets.homeOn),
            label: AppStrings.home,
            backgroundColor: ColorManager.lightBlack,
          ),
          BottomNavigationBarItem(
            icon: IconNavigationBar(image: IconAssets.favoritesOff),
            activeIcon: IconNavigationBar(image: IconAssets.favoritesOn),
            label: AppStrings.favorites,
            backgroundColor: ColorManager.lightBlack,
          ),
          BottomNavigationBarItem(
            icon: IconNavigationBar(image: IconAssets.profileOff),
            activeIcon: IconNavigationBar(image: IconAssets.profileOn),
            label: AppStrings.profile,
            backgroundColor: ColorManager.lightBlack,
          ),
          BottomNavigationBarItem(
            icon: IconNavigationBar(image: IconAssets.settingsOff),
            activeIcon: IconNavigationBar(image: IconAssets.settingsOn),
            label: AppStrings.settings,
            backgroundColor: ColorManager.lightBlack,
          ),
        ],
      ),
    );
  }

  onTap(int index) async {
    setState(() {
      _currentPage = index;
    });
  }
}

class IconNavigationBar extends StatelessWidget {
  const IconNavigationBar({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: AppSize.s24.h,
      width: AppSize.s24.w,
    );
  }
}

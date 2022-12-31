import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/color_manager.dart';
import 'package:news_app/config/styles_manager.dart';
import 'package:news_app/features/home/presentation/pages/home/sports_view.dart';

import '../../../../../config/assets_manager.dart';
import '../../../../../config/strings_manager.dart';
import '../../../../../config/values_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.home),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffBE78F8),
                  Color(0xffCA67DA),
                  Color(0xffD753B8),
                  Color(0xffEC3687)
                ],
                begin: AlignmentDirectional.bottomStart,
                end: AlignmentDirectional.topStart,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppSize.s90.h),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: AppSize.s35.h,
                  margin: EdgeInsets.symmetric(horizontal: AppSize.s20.w),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSize.s20.r),
                  ),
                  child: Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(IconAssets.search),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          hintText: AppStrings.search,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(IconAssets.micro),
                    ),
                  ]),
                ),
                SizedBox(height: AppSize.s25.h),
                TabBar(
                  physics: const AlwaysScrollableScrollPhysics(),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: AppSize.s3.w,
                  indicatorColor: ColorManager.white,
                  tabs: [
                    Text(
                      AppStrings.sport,
                      style: getJosefinSansSemiBoldStyle(
                        fontSize: AppSize.s18.sp,
                        color: ColorManager.white,
                      ),
                    ),
                    Text(
                      AppStrings.technology,
                      style: getJosefinSansSemiBoldStyle(
                        fontSize: AppSize.s18.sp,
                        color: ColorManager.white,
                      ),
                    ),
                    Text(
                      AppStrings.business,
                      style: getJosefinSansSemiBoldStyle(
                        fontSize: AppSize.s18.sp,
                        color: ColorManager.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          // physics: AlwaysScrollableScrollPhysics(),
          children: [
            NewsView(),
            Text("B"),
            Text("C"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/presentation/pages/home/popular_view.dart';

import '../../../../../config/strings_manager.dart';
import '../../../../../config/values_manager.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

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
              icon: const Icon(Icons.notifications),
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
                  end: AlignmentDirectional.topStart),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppSize.s110.h),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: AppSize.s35.h,
                  margin: EdgeInsets.symmetric(horizontal: AppSize.s20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppSize.s20.r),
                  ),
                  child: Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/search.png"),
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
                      icon: Image.asset("assets/icons/micro.png"),
                    ),
                  ]),
                ),
                SizedBox(height: AppSize.s25.h),
                TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: AppSize.s3.w,
                  indicatorColor: Colors.white,
                  tabs: [
                    Text(
                      AppStrings.popular,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontFamily: "JosefinSans-SemiBold",
                      ),
                    ),
                    Text(
                      AppStrings.latest,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontFamily: "JosefinSans-SemiBold",
                      ),
                    ),
                    Text(
                      AppStrings.trending,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontFamily: "JosefinSans-SemiBold",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body:const TabBarView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            PopularView(),
            Text("B"),
            Text("C"),
          ],
        ),
      ),
    );
  }
}

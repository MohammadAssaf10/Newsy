import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/presentation/widgets/popular_news_card.dart';

class PopularView extends StatelessWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          const PopularNewsCard(),
          SizedBox(height: 20.h),
          const PopularNewsCard(),
          SizedBox(height: 20.h),
          const PopularNewsCard(),
          SizedBox(height: 20.h),
          const PopularNewsCard(),
        ],
      ),
    );
  }
}

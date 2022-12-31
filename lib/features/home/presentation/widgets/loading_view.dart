import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/color_manager.dart';
import 'package:news_app/config/values_manager.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AppSize.s10.h,
      width: AppSize.s10.w,
      child: const CircularProgressIndicator(
        color: ColorManager.pink,
      ),
    );
  }
}

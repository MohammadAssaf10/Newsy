import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/strings_manager.dart';
import '../../../../config/values_manager.dart';

class PopularNewsCard extends StatelessWidget {
  const PopularNewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s145.h,
      width: AppSize.s330.w,
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s10.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.grey[350],
                height: AppSize.s120.h,
                width: AppSize.s120.w,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppSize.s10.h),
            constraints: BoxConstraints(maxWidth: AppSize.s140.w),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "News Name",
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "JosefinSans-SemiBold",
                      color: const Color(0xff222F3E),
                    ),
                  ),
                  Text(
                    "Author Name",
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: "Raleway-Regular",
                      color: const Color(0xff707070),
                    ),
                  ),
                  Text(
                    "The first mate and his skipper too will do their very comfortable.",
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: "Raleway-Regular",
                      color: const Color(0xff707070),
                    ),
                  ),
                  SizedBox(height: AppSize.s10.h),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.readMore,
                      style: TextStyle(
                        fontSize: AppSize.s15.sp,
                        fontFamily: "JosefinSans-SemiBold",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          IconButton(
            alignment: Alignment.topRight,
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}

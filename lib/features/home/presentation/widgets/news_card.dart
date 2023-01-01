import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/color_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/features/home/presentation/widgets/loading_view.dart';

import '../../../../config/assets_manager.dart';
import '../../../../config/strings_manager.dart';
import '../../../../config/styles_manager.dart';
import '../../../../config/values_manager.dart';
import '../../domain/entities/news.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.news,
  }) : super(key: key);
  final News news;
//123
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSize.s10.w, vertical: AppSize.s5.h),
      height: AppSize.s150.h,
      width: AppSize.s370.w,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: ColorManager.lightGrey,
                height: AppSize.s140.h,
                width: AppSize.s140.w,
                child: CachedNetworkImage(
                  imageUrl: news.newsImage,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => const LoadingView(),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error, color: ColorManager.error),
                ),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: AppSize.s140.w, maxHeight: AppSize.s150.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  news.newsTitle,
                  maxLines: news.author == "" ? 2 : 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: getJosefinSansSemiBoldStyle(
                    fontSize: AppSize.s20.sp,
                    color: ColorManager.elevatedButtonColor,
                  ),
                ),
                Text(
                  news.author,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: getRalewayRegularStyle(
                    fontSize: AppSize.s15.sp,
                    color: ColorManager.grey,
                  ),
                ),
                Text(
                  news.description,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: getRalewayRegularStyle(
                    fontSize: AppSize.s15.sp,
                    color: ColorManager.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.readMore,
                    style: getJosefinSansSemiBoldStyle(
                      fontSize: AppSize.s15.sp,
                      color: ColorManager.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          IconButton(
            alignment: Alignment.topRight,
            onPressed: () {},
            icon: Image.asset(
              IconAssets.favoritesOff,
              color: ColorManager.black,
              height: AppSize.s20.h,
              width: AppSize.s20.w,
            ),
            color: ColorManager.black,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/presentation/pages/home/home_screen.dart';

import '../../config/theme_manager.dart';

class MyApp extends StatelessWidget {
  // named constructor
  const MyApp._internal();

  static const MyApp _instance =
      MyApp._internal(); // singleton or single instance
  factory MyApp() => _instance; // factory

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: getApplicationTheme(),
          debugShowCheckedModeBanner: false,
          title: 'News App',
          home: const NewsView(),
        );
      },
    );
  }
}

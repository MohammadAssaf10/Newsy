import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme_manager.dart';
import '../../features/home/presentation/main_view.dart';
import '../../features/home/presentation/pages/home/bloc/news_bloc.dart';
import 'di.dart';

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
        return MultiBlocProvider(
          providers: [
            BlocProvider<NewsBloc>(
              create: (_) => sl<NewsBloc>()..add(GetTechnologyNews()),
            ),
          ],
          child: MaterialApp(
            theme: getApplicationTheme(),
            debugShowCheckedModeBanner: false,
            title: 'NEWSY',
            home: const MainView(),
          ),
        );
      },
    );
  }
}

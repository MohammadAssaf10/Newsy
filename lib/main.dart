import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/app/app.dart';

import 'bloc_observer.dart';
import 'core/app/di.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  await initHomeModule();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}


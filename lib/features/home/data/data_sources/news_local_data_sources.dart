import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/news.dart';

const String cachedSportNews = "CACHED_SPORT_NEWS";
const String cachedBusinessNews = "CACHED_BUSINESS_NEWS";
const String cachedTechnologyNews = "CACHED_TECHNOLOGY_NEWS";

abstract class NewsLocalDataSources {
  Future<List<News>> getCachedNews(String newsCategory);

  Future<Unit> cacheNews(List<News> news, String newsCategory);
}

class NewsLocalDataSourcesImpl implements NewsLocalDataSources {
  final SharedPreferences sharedPreferences;

  NewsLocalDataSourcesImpl(this.sharedPreferences);

  @override
  Future<Unit> cacheNews(List<News> news, String newsCategory) {
    List newsToJson =
        news.map<Map<String, dynamic>>((news) => news.toMap()).toList();
    sharedPreferences.setString(newsCategory, json.encode(newsToJson));
    return Future.value(unit);
  }

  @override
  Future<List<News>> getCachedNews(String newsCategory) {
    final jsonString = sharedPreferences.getString(newsCategory);
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<News> jsonToNews = decodeJsonData
          .map<News>((jsonNews) => News.fromMap(jsonNews))
          .toList();
      return Future.value(jsonToNews);
    } else {
      throw Exception();
    }
  }
}

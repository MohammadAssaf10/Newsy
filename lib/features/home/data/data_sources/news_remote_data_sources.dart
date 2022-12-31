import 'package:news_app/features/home/data/models/news_model.dart';

import 'news_api.dart';

abstract class NewsRemoteDataSource {
  Future<NewsModel> getNews(String newsCategory);
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final NewsServiceClient newsServiceClient;

  NewsRemoteDataSourceImpl({required this.newsServiceClient});

  @override
  Future<NewsModel> getNews(String newsCategory) =>
      newsServiceClient.newsList(category: newsCategory);
}

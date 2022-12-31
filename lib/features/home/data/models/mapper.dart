import 'package:news_app/features/home/data/models/news_model.dart';

import '../../domain/entities/news.dart';

extension NewsItemResponseMapper on NewsItemModel? {
  News toDomain() {
    return News(
      newsTitle: this?.newsTitle ?? "",
      author: this?.author ?? "",
      description: this?.description ?? "",
      newsImage: this?.newsImage ?? "",
      url: this?.url ?? "",
      content: this?.content ?? "",
    );
  }
}

extension NewsResponseMapper on NewsModel? {
  List<News> toDomain() {
    List<News> newsList = [];
    this?.articles?.forEach((element) {
      News news = News(
        newsTitle: element.newsTitle ?? "",
        author: element.author ?? "",
        description: element.description ?? "",
        url: element.url ?? "",
        newsImage: element.newsImage ?? "",
        content: element.content ?? "",
      );
      newsList.add(news);
    });
    return newsList;
  }
}

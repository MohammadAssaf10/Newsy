// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel()
  ..status = json['Status'] as int?
  ..message = json['message'] as String?
  ..articles = (json['articles'] as List<dynamic>?)
      ?.map((e) => NewsItemModel.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'Status': instance.status,
      'message': instance.message,
      'articles': instance.articles,
    };

NewsItemModel _$NewsItemModelFromJson(Map<String, dynamic> json) =>
    NewsItemModel()
      ..newsTitle = json['title'] as String?
      ..author = json['author'] as String?
      ..description = json['description'] as String?
      ..url = json['url'] as String?
      ..newsImage = json['urlToImage'] as String?
      ..content = json['content'] as String?;

Map<String, dynamic> _$NewsItemModelToJson(NewsItemModel instance) =>
    <String, dynamic>{
      'title': instance.newsTitle,
      'author': instance.author,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.newsImage,
      'content': instance.content,
    };

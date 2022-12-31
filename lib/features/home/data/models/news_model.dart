import 'package:json_annotation/json_annotation.dart';

import 'base_model.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel extends BaseModel {
  @JsonKey(name: "articles")
  List<NewsItemModel>? articles;
  NewsModel();
  // from json
  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

@JsonSerializable()
class NewsItemModel {
  NewsItemModel();
  @JsonKey(name: "title")
  String? newsTitle;
  @JsonKey(name: "author")
  String? author;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "urlToImage")
  String? newsImage;
  @JsonKey(name: "content")
  String? content;

  // from json
  factory NewsItemModel.fromJson(Map<String, dynamic> json) =>
      _$NewsItemModelFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$NewsItemModelToJson(this);
}

import 'package:equatable/equatable.dart';

class News extends Equatable {
  final String newsTitle;
  final String author;
  final String description;
  final String url;
  final String newsImage;
  final String content;

  const News({
    required this.newsTitle,
    required this.author,
    required this.description,
    required this.url,
    required this.newsImage,
    required this.content,
  });

  @override
  List<Object?> get props =>
      [newsTitle, author, description, url, newsImage, content];

  Map<String, dynamic> toMap() {
    return {
      'newsTitle': newsTitle,
      'author': author,
      'description': description,
      'url': url,
      'newsImage': newsImage,
      'content': content,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    return News(
      newsTitle: map['newsTitle'] as String,
      author: map['author'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
      newsImage: map['newsImage'] as String,
      content: map['content'] as String,
    );
  }
}

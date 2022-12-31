import 'package:dartz/dartz.dart';
import 'package:news_app/features/home/domain/repositories/news_repository.dart';

import '../../../../core/data/failure.dart';
import '../entities/news.dart';

class GetNewsUseCase {
  final NewsRepository newsRepository;

  GetNewsUseCase(this.newsRepository);

  /// callable class: allows the instance of the class to be called as a function.
  Future<Either<Failure, List<News>>> call(
      String apiCategory, String cachedNewsCategory) async {
    return await newsRepository.getNews(apiCategory,cachedNewsCategory);
  }
}

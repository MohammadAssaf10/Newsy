import 'package:dartz/dartz.dart';

import '../../../../core/data/failure.dart';
import '../entities/news.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<News>>> getNews(
      String apiCategory, String cachedNewsCategory);
}

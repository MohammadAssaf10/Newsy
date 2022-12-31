import 'package:dartz/dartz.dart';
import 'package:news_app/core/data/failure.dart';
import 'package:news_app/features/home/data/models/mapper.dart';
import 'package:news_app/features/home/domain/entities/news.dart';
import 'package:news_app/features/home/domain/repositories/news_repository.dart';

import '../../../../core/data/exception_handler.dart';
import '../../../../core/network/network_info.dart';
import '../data_sources/news_local_data_sources.dart';
import '../data_sources/news_remote_data_sources.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;
  final NewsLocalDataSources localDataSources;
  final NetworkInfo networkInfo;

  NewsRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.networkInfo});

  @override
  Future<Either<Failure, List<News>>> getNews(
      String apiCategory, String cachedNewsCategory) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteNews = await remoteDataSource.getNews(apiCategory);
        localDataSources.cacheNews(remoteNews.toDomain(), cachedNewsCategory);
        return Right(remoteNews.toDomain());
      } catch (e) {
        return Left(ExceptionHandler.handle(e).failure);
      }
    } else {
      try {
        final localNews =
            await localDataSources.getCachedNews(cachedNewsCategory);
        return Right(localNews);
      } catch (e) {
        return Left(ExceptionHandler.handle(e).failure);
      }
    }
  }
}

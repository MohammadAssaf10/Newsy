import 'package:dio/dio.dart';
import 'package:news_app/features/home/data/models/news_model.dart';
import 'package:retrofit/http.dart';

import '../../../../core/app/constants.dart';
part 'news_api.g.dart';

const String sportCategory="sports";
const String businessCategory="business";
const String technologyCategory="technology";
@RestApi(baseUrl: Constants.baseAPI)
abstract class NewsServiceClient {
  factory NewsServiceClient(Dio dio, {String baseUrl}) = _NewsServiceClient;

  @GET("top-headlines")
  Future<NewsModel> newsList({
    @Query("category") required String category,
    @Query("apiKey") String apiKey = Constants.apiKey,
    @Query("language") String language = Constants.english,
  });
}

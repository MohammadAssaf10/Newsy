import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/data_sources/news_api.dart';
import '../../../../data/data_sources/news_local_data_sources.dart';
import '../../../../domain/entities/news.dart';
import '../../../../domain/use_cases/get_news.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsUseCase getNewsUseCase;

  NewsBloc({required this.getNewsUseCase}) : super(NewsInitial()) {
    on<NewsEvent>((event, emit) async {
      if (event is GetTechnologyNews) {
        emit(LoadingNewsState());
        final sportNews = await getNewsUseCase(sportCategory,cachedSportNews);
        sportNews.fold(
            (failure) => emit(ErrorNewsState(errorMessage: failure.message)),
            (technologyNewsList) =>
                emit(LoadedTechnologyNewsState(technologyNewsList: technologyNewsList)));
      }
    });
  }
}

part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();
}

class NewsInitial extends NewsState {
  @override
  List<Object> get props => [];
}
class LoadedTechnologyNewsState extends NewsState{
  final List<News> technologyNewsList;
  const LoadedTechnologyNewsState({required this.technologyNewsList});
  @override
  List<Object?> get props => [technologyNewsList];
}
class LoadingNewsState extends NewsState{
  @override
  List<Object?> get props => [];
}
class ErrorNewsState extends NewsState{
  final String errorMessage;
  const ErrorNewsState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];

}

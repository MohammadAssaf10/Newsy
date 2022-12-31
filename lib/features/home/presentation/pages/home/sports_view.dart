import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/presentation/widgets/news_card.dart';

import '../../widgets/loading_view.dart';
import 'bloc/news_bloc.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state is LoadedTechnologyNewsState) {
          return SizedBox(
            height: 450.h,
            child: ListView.builder(
              itemBuilder: (_, index) {
                return NewsCard(news: state.technologyNewsList[index]);
              },
              itemCount: state.technologyNewsList.length,
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
            ),
          );
        } else if (state is LoadingNewsState) {
          return const LoadingView();
        } else if (state is ErrorNewsState) {
          return Center(child: Text(state.errorMessage));
        }
        return const SizedBox();
      },
    );
  }
}

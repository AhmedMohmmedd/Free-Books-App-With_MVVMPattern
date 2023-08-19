import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:bookly/features/search/presention/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentaion/views/Splash_View.dart';
import '../../features/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import '../../features/home/presentaion/views/book_detiles_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDatailsView = '/bookDatailsView';
  static const KSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDatailsView,
        builder: (context, state) =>  BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>()
          ),
          child: BookDatailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

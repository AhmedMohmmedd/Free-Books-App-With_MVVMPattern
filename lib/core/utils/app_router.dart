import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentaion/views/Splash_View.dart';
import '../../features/home/presentaion/views/book_detiles_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDatailsView = '/bookDatailsView';

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
        builder: (context, state) => const BookDatailsView(),
      ),
    ],
  );
}

import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentaion/manger/featured_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'features/Splash/presentaion/views/Splash_View.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/search/data/repos/search_repo_impl.dart';
import 'features/search/presention/manger/search_result_cubit/search_result_cubit.dart';

void main() {
  setupServicLocator();
  runApp(const bookly());
}

//booklyapp
class bookly extends StatelessWidget {
  const bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatuerdBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..featchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
            //montserratTextTheme => نوع الخط
            ),
      ),
    );
  }
}

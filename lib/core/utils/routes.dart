import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/Home_repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRoutes{
  static const kSplashView='/';
  static const kBookDetails='/BookDetails';
  static const kHome='/Home';
  static const kSearch='/Search';


  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplashView,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },),
          GoRoute(
            path: kBookDetails,
            builder: (BuildContext context, GoRouterState state) {
              return   BlocProvider(create: (context)=>SimilarBooksCubit(SimilarBooksInitial(), getIt.get<HomeRepoImpl>())
              ,child: BookDetailsView(bookModel: state.extra as BookModel,));
            },
          ),
          GoRoute(
            path: kHome,
            builder: (BuildContext context, GoRouterState state) {
              return  const HomeView();
            },
          ),
          GoRoute(
        path: kSearch,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),



    ],
  );
}



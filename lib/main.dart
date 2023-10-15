import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/Home_repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(FeaturedBooksInitialState(), getIt.get<HomeRepoImpl>()
        )..fetchFeaturedBooks()),
        BlocProvider(create: (context)=>NewestBooksCubit(NewestBooksInitial(), getIt.get<HomeRepoImpl>()
        )..fetchNewestBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(backgroundColor: kPrimaryColor),



      ),
    );}


}
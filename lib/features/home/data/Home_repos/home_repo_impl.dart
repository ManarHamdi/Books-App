import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/Home_repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../models/BookModel.dart';

class HomeRepoImpl implements HomeRepos{
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure,List<BookModel>>> fetchNewestBooksMethod() async {
    try {
      var data =await apiServices.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=computer science");
      List<BookModel> books=[];
      for (var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if (e is DioError){
        return left(ServerFailure.fromDioError(e)
        );
      }
      return left(ServerFailure(e.toString()));
    }

  }

  @override
  Future<Either<Failure,List<BookModel>>>fetchFeaturedBooksMethod() async {
      try {
        var data =await apiServices.get(endPoint: "volumes?Filtering=free-ebooks&q=subject:programming");
        List<BookModel> books=[];
        for (var item in data['items']){
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      }  catch (e) {
        if (e is DioError){
          return left(ServerFailure.fromDioError(e)
          );
        }
        return left(ServerFailure(e.toString()));
      }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooksMethod({required String category}) async {
    try {
      var data =await apiServices.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming");
      List<BookModel> books=[];
      for (var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if (e is DioError){
        return left(ServerFailure.fromDioError(e)
        );
      }
      return left(ServerFailure(e.toString()));
  }
}}
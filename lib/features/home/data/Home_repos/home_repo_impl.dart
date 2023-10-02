import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/app_services.dart';
import 'package:bookly_app/features/home/data/Home_repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/BooksModel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepos{
  late AppServices appServices;
  @override
  Future<Either<Failure,List<BooksModel>>> fetchBookDetailsMethod() async {
    try {
      var data =await appServices.get(endPoint: "volumes?Filtering=free-ebooks&q=programming");
      List<BooksModel> books=[];
      for (var item in data['items']){
        books.add(BooksModel.fromJson(item));
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
  fetchBooksMethod() {
    // TODO: implement fetchBooksMethod
    throw UnimplementedError();
  }
}
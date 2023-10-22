import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/search/data/search_repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/failure.dart';
import '../../../home/data/models/BookModel.dart';

class SearchRepoImpl implements SearchRepos{
  final ApiServices apiServices;

  SearchRepoImpl(this.apiServices);
  @override
  Future<Either<Failure,List<BookModel>>> fetchResultMethod({required String keyword}) async {
    try {
      var data =await apiServices.get(endPoint: "volumes?Filtering=free-ebooks&q=$keyword");
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
}
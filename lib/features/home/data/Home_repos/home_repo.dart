import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import '../models/BookModel.dart';

abstract class HomeRepos{
  Future<Either<Failure,List<BookModel>>> fetchNewestBooksMethod();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooksMethod();
  Future<Either<Failure,List<BookModel>>> fetchSimilarBooksMethod({required String category});

}
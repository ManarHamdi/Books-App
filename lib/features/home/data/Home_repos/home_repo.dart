import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/features/home/data/models/BooksModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos{
  Future<Either<Failure,List<BooksModel>>> fetchBooksMethod();
  Future<Either<Failure,List<BooksModel>>> fetchBookDetailsMethod();
}
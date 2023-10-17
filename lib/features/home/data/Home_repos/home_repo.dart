import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import '../models/BookModelll.dart';

abstract class HomeRepos{
  Future<Either<Failure,List<BookModelll>>> fetchNewestBooksMethod();
  Future<Either<Failure,List<BookModelll>>> fetchFeaturedBooksMethod();
}
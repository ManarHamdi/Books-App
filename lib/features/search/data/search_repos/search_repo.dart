import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepos {
  Future<Either<Failure,List<BookModel>> > fetchResultMethod ({required String keyword});

}
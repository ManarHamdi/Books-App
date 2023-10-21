import '../../../data/models/BookModel.dart';
abstract class SimilarBooksStates {}
class SimilarBooksInitial extends SimilarBooksStates{}
class SimilarBooksLoading extends SimilarBooksStates{}
class SimilarBooksSuccess extends SimilarBooksStates{
  final List<BookModel> books;
  SimilarBooksSuccess(this.books);
}
class SimilarBooksFailure extends SimilarBooksStates{
  final String errMessage;
  SimilarBooksFailure(this.errMessage);
}
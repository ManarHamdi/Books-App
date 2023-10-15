import '../../../data/models/BooksModel.dart';

abstract class NewestBooksStates {}
class NewestBooksInitial extends NewestBooksStates{}
class NewestBooksLoading extends NewestBooksStates{}
class NewestBooksSuccess extends NewestBooksStates{
  final List<BooksModel> books;
  NewestBooksSuccess(this.books);
}
class NewestBooksFailure extends NewestBooksStates{
  final String errMessage;
  NewestBooksFailure(this.errMessage);
}
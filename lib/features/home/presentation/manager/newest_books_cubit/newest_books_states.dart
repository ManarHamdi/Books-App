import '../../../data/models/BookModel.dart';

abstract class NewestBooksStates {}
class NewestBooksInitial extends NewestBooksStates{}
class NewestBooksLoading extends NewestBooksStates{}
class NewestBooksSuccess extends NewestBooksStates{
  final List<BookModel> books;
  NewestBooksSuccess(this.books);
}
class NewestBooksFailure extends NewestBooksStates{
  final String errMessage;
  NewestBooksFailure(this.errMessage);
}
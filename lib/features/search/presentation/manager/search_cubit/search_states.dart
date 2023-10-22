import '../../../../home/data/models/BookModel.dart';

abstract class SearchBooksStates {}
class SearchBooksInitialState extends SearchBooksStates{}
class SearchBooksLoadingState extends SearchBooksStates{}
class SearchBooksFailureState extends SearchBooksStates{
  final String errMessage;
  SearchBooksFailureState(this.errMessage);

}
class SearchBooksSuccessState extends SearchBooksStates{
  final List<BookModel> books;
  SearchBooksSuccessState(this.books);
}
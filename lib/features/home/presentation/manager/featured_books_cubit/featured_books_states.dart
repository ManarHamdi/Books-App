import '../../../data/models/BooksModel.dart';

abstract class FeaturedBooksStates {}
class FeaturedBooksInitial extends FeaturedBooksStates{}
class FeaturedBooksLoading extends FeaturedBooksStates{}
class FeaturedBooksFailure extends FeaturedBooksStates{
   final String errMessage;
  FeaturedBooksFailure(this.errMessage);

}
class FeaturedBooksSuccess extends FeaturedBooksStates{
   final List<BooksModel> books;
  FeaturedBooksSuccess(this.books);
}
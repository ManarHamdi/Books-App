
import '../../../data/models/BookModel.dart';

abstract class FeaturedBooksStates {}
class FeaturedBooksInitialState extends FeaturedBooksStates{}
class FeaturedBooksLoadingState extends FeaturedBooksStates{}
class FeaturedBooksFailureState extends FeaturedBooksStates{
   final String errMessage;
  FeaturedBooksFailureState(this.errMessage);

}
class FeaturedBooksSuccessState extends FeaturedBooksStates{
   final List<BookModel> books;
  FeaturedBooksSuccessState(this.books);
}
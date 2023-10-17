
import '../../../data/models/BookModelll.dart';

abstract class FeaturedBooksStates {}
class FeaturedBooksInitialState extends FeaturedBooksStates{}
class FeaturedBooksLoadingState extends FeaturedBooksStates{}
class FeaturedBooksFailureState extends FeaturedBooksStates{
   final String errMessage;
  FeaturedBooksFailureState(this.errMessage);

}
class FeaturedBooksSuccessState extends FeaturedBooksStates{
   final List<BookModelll> books;
  FeaturedBooksSuccessState(this.books);
}
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/Home_repos/home_repo.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  final HomeRepos homeRepo;
  FeaturedBooksCubit(super.initialState, this.homeRepo);
  Future<void> fetchFeaturedBooks()async {
    emit(FeaturedBooksLoadingState());
    var result=await homeRepo.fetchFeaturedBooksMethod();
    result.fold( (failure) {
      emit(FeaturedBooksFailureState(failure.errorMess));
    }
    ,(books) {
      emit(FeaturedBooksSuccessState(books));
        }
    ) ;
  }

  }

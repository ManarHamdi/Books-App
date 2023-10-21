import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/Home_repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates>{
  final HomeRepos homeRepos;
  SimilarBooksCubit(super.initialState, this.homeRepos);
  Future<void> fetchSimilarBooks ({required String category}) async {
    emit(SimilarBooksLoading());
    var result =await homeRepos.fetchSimilarBooksMethod(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errorMess));
    },
            (books) {
          emit(SimilarBooksSuccess(books));
        });
  }
}
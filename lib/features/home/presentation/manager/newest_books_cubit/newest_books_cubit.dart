import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/Home_repos/home_repo.dart';
import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  final HomeRepos homeRepos;
  NewestBooksCubit(super.initialState, this.homeRepos);
  Future<void> fetchNewestBooks () async {
    emit(NewestBooksLoading());
    var result =await homeRepos.fetchNewestBooksMethod();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errorMess));
    },
            (books) {
      emit(NewestBooksSuccess(books));
            });
  }
}
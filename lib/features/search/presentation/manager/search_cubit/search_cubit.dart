import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/search_repos/search_repo.dart';

class SearchBooksCubit extends Cubit<SearchBooksStates>{
  final SearchRepos homeRepo;
  SearchBooksCubit(super.initialState, this.homeRepo);
  String keyWord="";
  Future<void> fetchResultMethod({required String keyword})async {
    emit(SearchBooksLoadingState());
    var result=await homeRepo.fetchResultMethod(keyword: keyWord);
    result.fold( (failure) {
      emit(SearchBooksFailureState(failure.errorMess));
    }
        ,(books) {
          emit(SearchBooksSuccessState(books));
        }
    ) ;
  }
}
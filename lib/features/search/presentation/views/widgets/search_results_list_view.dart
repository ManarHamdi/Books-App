import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
class SearchResultsListView extends StatefulWidget {
   const SearchResultsListView({Key? key,}) : super(key: key);

  @override
  State<SearchResultsListView> createState() => _SearchResultsListViewState();
}

class _SearchResultsListViewState extends State<SearchResultsListView> {
  @override
  Widget build(BuildContext context) {
    return
    BlocBuilder<SearchBooksCubit,SearchBooksStates> (
      builder: (context, state) {
        if (state is SearchBooksSuccessState){
          return SizedBox(
            height: MediaQuery.of(context).size.height*.7,
            child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRoutes.kBookDetails);
                    },
                    child:
                  BestSellerListViewItem(booksModel: state.books[index],)
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 5),
                itemCount: state.books.length),
          );
        } else if (state is SearchBooksFailureState){
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else {
          return const CustomLoadingIndicator();
        }
      },
    );

  }
}

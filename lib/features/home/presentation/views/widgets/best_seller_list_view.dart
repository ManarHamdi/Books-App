import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return


      BlocBuilder<NewestBooksCubit,NewestBooksStates>(
        builder:(context, state) {
          if (state is NewestBooksSuccess){
            return
              SizedBox(height: MediaQuery.of(context).size.height*.4,
                child: ListView.separated(
                  physics: const ScrollPhysics(),
                    itemBuilder: (context, index) => InkWell(
                        onTap: (){
                          GoRouter.of(context).push(AppRoutes.kBookDetails);
                        },
                        child:  BestSellerListViewItem(booksModel: state.books[index])),
                    separatorBuilder: (context, index) => const SizedBox(height: 5),
                    itemCount: state.books.length),

              );
          }
          else if (state is NewestBooksFailure){
            return CustomErrorWidget(errMessage: state.errMessage,);
          }
          else {
            return const CustomLoadingIndicator();
          }
        },

      );
  }
}

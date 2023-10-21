import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'books_list_view_item.dart';
import 'custom_error_widget.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key,  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<FeaturedBooksCubit,FeaturedBooksStates>(
        builder: (context,state) {
          if (state is FeaturedBooksSuccessState) {
            return
              SizedBox(
                height: 210,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        InkWell(
                            onTap: () {
                              GoRouter.of(context).push(AppRoutes.kBookDetails,extra: state.books[index]);

                            },
                            child: BooksListViewItem(imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail??"",)),
                    separatorBuilder: ((context, index) =>
                    const SizedBox(width: 5,)),
                    itemCount: state.books.length),
              );
          } else if (state is FeaturedBooksFailureState){
            return CustomErrorWidget(errMessage: state.errMessage,);
          }
          else {
            return const CustomLoadingIndicator();
          }
        }

      );
  }
}

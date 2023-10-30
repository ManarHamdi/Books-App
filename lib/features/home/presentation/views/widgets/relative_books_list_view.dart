
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';
import 'books_list_view_item.dart';

class RelativeBooksListView extends StatelessWidget {
  const RelativeBooksListView({Key? key, required this.bookModel}) : super(key: key);
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return       BlocBuilder<SimilarBooksCubit,SimilarBooksStates>(
builder: (context, state) {
  if (state is SimilarBooksSuccess){
       return SizedBox(
        height: 124,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>   InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRoutes.kBookDetails,extra: state.books[index]);

              },
              child: BooksListViewItem(
                imageUrl:state.books[index].volumeInfo!.imageLinks!.thumbnail?? "https://miro.medium.com/v2/resize:fit:5120/1*42ebJizcUtZBNIZPmmMZ5Q.jpeg",
              ),
            ),
            separatorBuilder: ((context, index) => const SizedBox(width: 5,)),
            itemCount: 10),
      );}
  else if (state is SimilarBooksFailure){
    return CustomErrorWidget(errMessage: state.errMessage);
  }
  else {
    return const CustomLoadingIndicator();
  }
}
    );

  }
}

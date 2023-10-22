import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/search_cubit/search_cubit.dart';
import 'custom_search_texr_field.dart';
class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomSearchTextField(),
            SizedBox(height: 40,),
            Text("Search results",style: Styles.textStyle16,),
            SizedBox(height: 30,),
            SearchResultsListView(),

          ],
        ),
      ),
    );
  }
}

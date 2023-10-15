import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.7,
      child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRoutes.kBookDetails);
              },
              child: const Text("ndknd")
              // BestSellerListViewItem(booksModel: ,)
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemCount: 10),
    );
  }
}

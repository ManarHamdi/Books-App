import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*.4,
      child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRoutes.kBookDetails);
              },
              child: const BestSellerListViewItem()),
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemCount: 10),
    );
  }
}

import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSelletListView extends StatelessWidget {
  const BestSelletListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*.4,
      child: ListView.separated(
          itemBuilder: (context, index) => const BestSellerListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemCount: 10),
    );
  }
}

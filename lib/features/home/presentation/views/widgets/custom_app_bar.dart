import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 16),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 20,width:80 ),
          const Spacer(),
          IconButton(
              onPressed: (){
                GoRouter.of(context).push(AppRoutes.kSearch);

              },
              icon: const Icon(Icons.search_sharp,size: 24,))
        ],
      ),
    );
  }
}
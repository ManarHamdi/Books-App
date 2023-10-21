import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(onPressed: (){
            GoRouter.of(context).pop();
          },
              icon: const Icon(Icons.close_outlined)),
          const Spacer(),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
    );
  }
}

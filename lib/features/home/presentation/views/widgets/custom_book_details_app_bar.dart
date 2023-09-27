import 'package:flutter/material.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.close_outlined)),
          Spacer(),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
    );
  }
}

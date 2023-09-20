
import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context,_){
          return SlideTransition(
              position:animation ,
              child: const Text("Read Free Books",textAlign: TextAlign.center,));}
    );
  }
}
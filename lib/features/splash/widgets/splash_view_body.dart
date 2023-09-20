import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/splash/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget{
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    animation=Tween<Offset>(begin:Offset(0,10) ,end:Offset(0,0) ).animate(animationController);
    animationController.forward();
    animationController.addListener(() { setState(() {

    });});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(AssetsData.logo),
        const SizedBox(height: 10,),
        slidingText(animation: animation)
      ],
    );
  }
}


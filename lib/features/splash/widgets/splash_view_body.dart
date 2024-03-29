import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/splash/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    super.initState();
    initSlididingAnimation();
    Future.delayed(kTransitionDuration,(){
     // Navigator.pushReplacementNamed(context, AppRoutes.kHome);
      GoRouter.of(context).pushReplacement(AppRoutes.kHome);
    });
  }



  @override
  void dispose() {
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
  void initSlididingAnimation() {
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1));
    animation=Tween<Offset>(begin:const Offset(0,10) ,end:const Offset(0,0) ).animate(animationController);
    animationController.forward();

  }
}


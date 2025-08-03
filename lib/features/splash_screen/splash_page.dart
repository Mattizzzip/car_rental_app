import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashPage extends StatefulWidget {

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage>{

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 6000),() {
      if (mounted) {
        context.go("/login");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(body: SplashPageScreen(),),
    );
  }
}

class SplashPageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          fit: BoxFit.fill,
          child: Image.asset("assets/images/loading_screen_bg.png")
        ),
        Center(
          child: Image.asset("assets/images/company_logo.png",width: 256,),
        )
      ],
    );
  }
}
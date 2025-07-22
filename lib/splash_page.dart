import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) {
        context.go('/launch');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashBackground());
  }
}

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/splash/splash.png', fit: BoxFit.cover),
        Center(
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 180,
          ),
        ),
      ],
    );
  }
}
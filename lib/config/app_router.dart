import 'package:car_rental_app/features/app_pages/layout.dart';
import 'package:car_rental_app/features/auth/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/forgot_password.dart';
import '../features/auth/login.dart';
import '../features/splash_screen/splash_page.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: "splash",
      pageBuilder: (context, state) => _buildFadeTransition(const SplashPage()),
    ),
    GoRoute(
      path: "/login",
      name: "login",
      pageBuilder: (context, state) => _buildFadeTransition(const LoginPage()),
    ),
    GoRoute(
      path: "/register",
      name: "register",
      pageBuilder: (context, state) => _buildFadeTransition(const RegisterPage()),
    ),
    GoRoute(
      path: "/forgot_password",
      name: "forgot_password",
      pageBuilder: (context, state) => _buildFadeTransition(const ForgotPasswordPage()),
    ),
    GoRoute(
      path: "/layout_page",
      name: "layout_page",
      pageBuilder: (context, state) => _buildFadeTransition(LayoutPage()),
    ),
  ]
);

CustomTransitionPage _buildFadeTransition(Widget child) {
  return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child)
  {
    return FadeTransition(opacity: animation, child: child);
  });
}
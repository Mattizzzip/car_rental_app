import 'package:car_rental_app/core/auth_row.dart';
import 'package:car_rental_app/core/buttons/default_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/buttons/google_login_btn.dart';


class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage>{



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: LoginScreen(),
        ),
    );
  }
}

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height
          ),
      child: Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/company_logo.png", width: MediaQuery.of(context).size.width * 0.8,),
            Text(
              "Welcome back 👋 to CarS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0
              ),
            ),
            Text(
              "Log in to your account using email or google",
              style: TextStyle(
                  color: Color(0xFFCDCDCB)
              ),
            ),
            AuthRow(textPlaceholder: "Email address"),
            AuthRow(textPlaceholder: "Password"),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {context.go("/forgot_password");},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Color(0xFFC3E54B),
                  ),
                ),
              ),
            ),
            DefaultButton(buttonText: "Login", onPressed: () {context.go("/layout_page"); }),
            Center(
              child: Text(
                "Or continue with social account",
              ),
            ),
            GoogleLoginBtn(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont Have an account? ",
                ),
                GestureDetector(
                  onTap: () {context.go("/register");},
                  child: Text(
                      "Sign up",
                    style: TextStyle(
                      color: Color(0xFF94AE39),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
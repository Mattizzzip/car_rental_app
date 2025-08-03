import 'package:car_rental_app/core/auth_row.dart';
import 'package:car_rental_app/core/buttons/default_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/buttons/google_login_btn.dart';


class RegisterPage extends StatefulWidget {

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}


class _RegisterPageState extends State<RegisterPage>{



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: RegisterScreen(),
        ),
    );
  }
}

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height
          ),
      child: Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/company_logo.png", width: MediaQuery.of(context).size.width * 0.2,),
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
            AuthRow(textPlaceholder: "Name"),
            AuthRow(textPlaceholder: "Email address"),
            AuthRow(textPlaceholder: "Password"),
            AuthRow(textPlaceholder: "Confirm password"),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {context.go("/splash");},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Color(0xFFC3E54B),
                  ),
                ),
              ),
            ),
            DefaultButton(buttonText: "Register", onPressed: () {context.go("/splash"); }),
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
                  "Already have an account? ",
                ),
                GestureDetector(
                  onTap: () {context.go("/login");},
                  child: Text(
                      "Log In",
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
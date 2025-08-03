import 'package:car_rental_app/core/auth_row.dart';
import 'package:car_rental_app/core/buttons/default_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/buttons/google_login_btn.dart';


class ForgotPasswordPage extends StatefulWidget {

  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}


class _ForgotPasswordPageState extends State<ForgotPasswordPage>{

  bool isVerificationCodeSended = false;

  void showVerificationCode() {
    setState(() {
      isVerificationCodeSended = !isVerificationCodeSended;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
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
                      "Write the down below your email and we'll send you verification code",
                      style: TextStyle(
                          color: Color(0xFFCDCDCB)
                      ),
                    ),
                    AuthRow(textPlaceholder: "Email address"),
                    if (isVerificationCodeSended)
                      AuthRow(textPlaceholder: "Verification code"),
                    DefaultButton(buttonText: "Send Verification code", onPressed: () {
                      showVerificationCode();
                    }),
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
          ),
        ),
    );
  }
}

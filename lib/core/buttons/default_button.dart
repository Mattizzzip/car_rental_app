import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  
  final String buttonText;
  final VoidCallback? onPressed;

  const DefaultButton({super.key, required this.buttonText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
            color: Colors.black,
            fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            elevation: 0,
            backgroundColor: Color(0xFFC3E54B),
            shadowColor: Colors.transparent,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          )
        ),
    );
  }
  
  
}
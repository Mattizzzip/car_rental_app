import 'package:flutter/material.dart';

class AuthRow extends StatelessWidget {

  final String textPlaceholder;

  const AuthRow({super.key, required this.textPlaceholder});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: textPlaceholder,
          hintStyle: TextStyle(color: Color(0xFFCDCDCB)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Color(0xFFCDCDCB))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Color(0xFFCDCDCB))),
          filled: true,
          fillColor: Color(0xFFFAFAFA),
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Поле обязательно для заполнения';
          }
          return null;
        },
      ),
    );
  }
}

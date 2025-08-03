import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class GoogleLoginBtn extends StatefulWidget{

  @override
  State<GoogleLoginBtn> createState() => _GoogleLoginBtnState();
}
class _GoogleLoginBtnState extends State<GoogleLoginBtn> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            side: BorderSide(width: 1)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFFC3E54B),
          shadowColor: Colors.transparent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.01),
              child: SvgPicture.asset("assets/images/google.svg", width: 50,)),
          Text("Google",
              style: TextStyle(color: Colors.black))
        ],
      ),
    );
  }
}
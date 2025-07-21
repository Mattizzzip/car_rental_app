import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ManufacturerButton extends StatefulWidget {

  final String manufacturerLogoPath;
  final String manufacturerName;
  final VoidCallback onPressed;

  const ManufacturerButton({super.key, required this.manufacturerLogoPath, required this.manufacturerName, required this.onPressed});

  @override
  State<ManufacturerButton> createState() => _ManufacturerButtonState();
}

class _ManufacturerButtonState extends State<ManufacturerButton> {

  bool isBtnPressed = false;

  // @override
  // void initState() {
  //   super.initState();
  // }

  void showPressedButton() {
    setState(() {
      isBtnPressed = !isBtnPressed;
    });
  }
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        width: MediaQuery.of(context).size.width *0.2,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isBtnPressed ? Color(0xFFC3E54B) : Color(0xFFE9E9E7),
                      width: 2
                  ),
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Color(0xFFFAFAFA),
            ),
            onPressed: () {
              showPressedButton();
              widget.onPressed();
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.manufacturerLogoPath, width: MediaQuery.of(context).size.width * 0.25),
                Text(
                  widget.manufacturerName,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isBtnPressed ? Color(0xFFC3E54B) : Color(0xFF000000)
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
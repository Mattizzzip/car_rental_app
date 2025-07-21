import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SliderButton extends StatelessWidget {

  const SliderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:MediaQuery.of(context).size.width *0.01, bottom: MediaQuery.of(context).size.width *0.01, left: MediaQuery.of(context).size.width *0.01, right: MediaQuery.of(context).size.width / 2.2),
      child: SlideAction(
        sliderButtonIcon: const Icon(Icons.navigate_next),
        elevation: 0,
        outerColor: Color(0xFFC9C9C9),
        innerColor: Color(0xFFC3E54B),
        borderRadius: 10,
        text: "",
        sliderButtonIconSize: 24,
        sliderRotate: false,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class VehicleParameter extends StatelessWidget {

  final Icon paramIcon;
  final String parameter;
  final String value;

  const VehicleParameter({super.key, required this.paramIcon, required this.parameter, required this.value});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.1,
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
          border: Border.all(
            color: Color(0xFFF1F1F0),
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.01, horizontal: MediaQuery.of(context).size.width*0.02,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              paramIcon,
              Text(
                parameter,
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              Text(
                value,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
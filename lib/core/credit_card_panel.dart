import 'package:flutter/material.dart';
import 'package:car_rental_app/domain/models.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CreditCardPanel extends StatelessWidget {

  final CreditCard userCard;

  const CreditCardPanel({super.key, required this.userCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFC3E54B),
          borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userCard.number.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  Text(
                    userCard.owner,
                    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: MediaQuery.of(context).size.width * 0.03
                    ),
      ),
                ],
              ),
              if (userCard.cardType == CardType.Mastercard)
                SvgPicture.asset("assets/images/creditcard_icons/mastercard.svg", width: 180,)
              else if (userCard.cardType == CardType.Visa)
                SvgPicture.asset("assets/images/creditcard_icons/visa.svg", width: 180,)
              else if (userCard.cardType == CardType.UnionPay)
                  SvgPicture.asset("assets/images/creditcard_icons/unionpay.svg", width: 180,)
                else if (userCard.cardType == CardType.Mir)
                    SvgPicture.asset("assets/images/creditcard_icons/mir.svg", width: 180,)
            ],
          ),


        )
        ),
      );
  }
}
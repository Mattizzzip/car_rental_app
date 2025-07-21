

enum CardType {
  Visa,
  Mastercard,
  Mir,
  UnionPay,
  Other
}

class CreditCard {

  final int number;
  final String owner;
  final DateTime validUntil;
  final int cvv;
  CardType? cardType;


  CreditCard({
    required this.number,
    required this.owner,
    required this.validUntil,
    required this.cvv,
  }) {
    if (this.number.toString()[0] == '4') {
      this.cardType = CardType.Visa;
    }
    else if (this.number.toString()[0] == '5') {
      this.cardType = CardType.Mastercard;
    }
    else if (this.number.toString()[0] == '6') {
      this.cardType = CardType.UnionPay;
    }
    else if (this.number.toString().substring(0,2) == '22') {
      this.cardType = CardType.Mir;
    }
  }
}
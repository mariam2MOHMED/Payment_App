import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  var formkey=GlobalKey<FormState>();
  AutovalidateMode autovalidateMode;
  CustomCreditCard({required this.formkey,required this.autovalidateMode});

  @override
  State<CustomCreditCard> createState() =>
      _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber="",expiryDate="",cardHolderName="",cvvCode='';
  bool isCvvFocused=false;

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        CreditCardWidget(
backgroundImage: 'assets/images/Frame 1.png',
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: isCvvFocused, //true when you want to show cvv(back) view
          onCreditCardWidgetChange: (CreditCardBrand brand) {}, // Callback for anytime credit card brand is changed
        ),
        CreditCardForm(

            autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (credit){
          cardHolderName=credit.cardHolderName;

          cvvCode=credit.cvvCode;

          cardNumber=credit.cardNumber;

          isCvvFocused=credit.isCvvFocused;

         // cardHolderName=credit.cardHolderName;
           setState(() {

           });
            },
            formKey: widget.formkey)
      ],
    );
  }
}

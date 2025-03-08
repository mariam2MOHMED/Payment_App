import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class PaymentItem extends StatelessWidget {
  String title;String value;
  PaymentItem({
    required this.title,    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: Styles.style18,),
          Text(value,style: Styles.style18.copyWith(
            fontWeight: FontWeight.bold
          ),)
        ]
    );
  }
}

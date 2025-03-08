import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class TotalItem extends StatelessWidget {
  String title;String value;
  TotalItem({
    required this.title,    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: Styles.style24,),
          Text(value,style: Styles.style24,)
        ]
    );
  }
}

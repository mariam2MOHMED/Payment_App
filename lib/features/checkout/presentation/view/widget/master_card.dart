import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/styles.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: EdgeInsets.symmetric(horizontal: 22,
      vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/logo.svg"),
          SizedBox(width: 22.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Credit Card", style: Styles.style18),
             SizedBox(height: 7,),
              Text("Mastercard **78", style: Styles.style18),
            ],
          )
        ]
      ),
    );
  }
}

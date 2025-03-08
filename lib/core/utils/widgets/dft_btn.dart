import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class dftBtn extends StatelessWidget {
  void Function() onpress; String title;
   dftBtn({
    required this.title, required this.onpress,
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
          backgroundColor: Color(0xff34A853),
          fixedSize: Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          padding: EdgeInsets.symmetric(
              vertical: 10)
        ) ,
        onPressed: onpress,
        child: Center(child: Center(child: Text(title,style: Styles.style22,))));
  }
}

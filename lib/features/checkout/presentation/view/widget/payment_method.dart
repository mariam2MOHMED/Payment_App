import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethod extends StatelessWidget {
  final  String image;final bool isSelected;
const   PaymentMethod({
     required  this.isSelected,
     required this.image
});

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(duration:
    Duration(milliseconds: 650),
    width: 103,height: 62,

      decoration: ShapeDecoration(

          shadows:[
              BoxShadow(
                color:isSelected==true?Colors.black:Colors.white,
                offset: Offset(0, 0),
                blurRadius: 1,
                spreadRadius: 1)
            ],
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
        side:   BorderSide(
            color: isSelected==true?
            Color(0xff34A853):Color(0xffd9d9d9)
        )

      ))
      // BoxDecoration(
      //
      //
      //
      //   boxShadow:[
      //     BoxShadow(
      //       color:isSelected==true?Colors.black:Colors.white,
      //       offset: Offset(0, 0),
      //       blurRadius: 1,
      //       spreadRadius: 1)
      //   ],
      //
      //   borderRadius: BorderRadius.circular(15),
      //
      //   border:
      //
      //   Border.all(
      //     color: isSelected==true?
      //     Color(0xff34A853):Color(0xffd9d9d9)
      //   ),

 ,
    child: Center(child:
    SvgPicture.asset
      (image,fit: BoxFit.scaleDown,)),
    );
  }
}

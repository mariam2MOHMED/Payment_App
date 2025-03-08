import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/view/widget/payment_method.dart';

class PaymentMethodsListView extends StatefulWidget {
   PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
List<String>images=[
  "assets/images/pay.svg","assets/images/paypal.svg","assets/images/payapple.svg"
];
int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
activeIndex=index;
setState(() {

});
          },
          child: PaymentMethod(
              isSelected:activeIndex==index,
              image: images[index]),
        );
      },
          separatorBuilder: (context,index){
        return SizedBox(width: 20,);
          },
          itemCount: images.length),
    );
  }
}

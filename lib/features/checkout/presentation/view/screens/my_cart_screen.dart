import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets/dft_btn.dart';
import 'package:payment/features/checkout/presentation/view/screens/payment_detials.dart';
import 'package:payment/features/checkout/presentation/view/widget/info_item.dart';
import 'package:payment/features/checkout/presentation/view/widget/total_item.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("MyCart",style: Styles.style25,),
        leading: Icon(
          Icons.arrow_back,
          size: 24.0,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12
        ),
        child: Column(
          children: [
        Expanded(
          child: Image.asset(
            "assets/images/cart.png",
            fit: BoxFit.cover,),
        ),
            SizedBox(height: 15.0,),
        InfoItem(title: "Order Subtotal", value: r"$42.97"),
            SizedBox(height: 12.0,),
            InfoItem(title: "Discount", value: r"$0"),
            SizedBox(height: 12.0,),
            InfoItem(title: "Shipping", value: r"$8"),
            Divider(
              thickness: 1,
              color: Color(0xffC7C7C7),
              height: 24.0,
            ),
            TotalItem(title: "Total", value: "0")
            ,SizedBox(height: 12.0,),
            dftBtn(title: "Complete Payment", onpress: (){
              Navigator.push(context, MaterialPageRoute(builder:
              (context)=>PaymentDetials()));
            })
            ,SizedBox(height: 12.0,),
          ],
        ),
      ),
    );
  }
}

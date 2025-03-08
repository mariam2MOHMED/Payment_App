import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets/dft_btn.dart';
import 'package:payment/features/checkout/presentation/view/screens/thank_you_screen.dart';
import 'package:payment/features/checkout/presentation/view/widget/flutter_credit_card.dart';
import 'package:payment/features/checkout/presentation/view/widget/payment_methods.dart';

class PaymentDetials extends StatefulWidget {
   PaymentDetials({super.key});

  @override
  State<PaymentDetials> createState() => _PaymentDetialsState();
}

class _PaymentDetialsState extends State<PaymentDetials> {
  var formkey=GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("Payment Details",style: Styles.style25,),),
      body: CustomScrollView(
       slivers: [
         SliverToBoxAdapter(child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: PaymentMethodsListView(),
         )),
         SliverToBoxAdapter(child: CustomCreditCard(
          formkey: formkey,autovalidateMode: autovalidateMode,
         )),
         SliverFillRemaining(child: Align(

           child: Padding(
             padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 20),
             child: dftBtn(title: "Pay",
                 onpress: (){
               if(formkey.currentState!.validate()){
formkey.currentState!.save();
               }else{
autovalidateMode=AutovalidateMode.always;
Navigator.push(context,
    MaterialPageRoute(builder: (context)=>
        ThankYouScreen()));
               }
               setState(() {

               });
                 }),
           ),
         ),)
       ]

      ),
    );
  }
}

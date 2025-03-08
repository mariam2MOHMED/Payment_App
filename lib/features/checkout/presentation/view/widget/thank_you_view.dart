import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/view/widget/master_card.dart';
import 'package:payment/features/checkout/presentation/view/widget/payment_info.dart';
import 'package:payment/features/checkout/presentation/view/widget/total_item.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20,right: 20,
      bottom: 32,top: 60
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
      Container(
        decoration: ShapeDecoration(
        color: Color(0xffEDEDED),
        shape:
        RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 66,
          left: 22,right: 22
          ),
          child: Column(
            children: [
              Text("Thank you!",style: Styles.style25,),
              SizedBox(height: 12.0,),
              Text("Your transaction was successful",
                style: Styles.style22.copyWith(
                  fontSize: 20
                ),),
              SizedBox(height: 20.0,),
              PaymentItem(title: "Date", value: "01/24/2023"),
              SizedBox(height: 20.0,),

    PaymentItem(title: "Time", value: "10:15 AM"),
    SizedBox(height: 20.0,),
              PaymentItem(title: "To", value: "Sam Louis"),
             Divider(
               thickness: 2,height: 60.0,
               color: Color(0xffC7C7C7),
             ),
              TotalItem(title: "Total", value: "\$50.97"),
              SizedBox(height: 20.0,),
              MasterCard()
            ],
          ),
        ),
      ),
          Positioned(
            left: -20,
            bottom: MediaQuery.of(context).size.height*0.2,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right:-20,
            bottom: MediaQuery.of(context).size.height*0.2,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: 30,right: 30,
            bottom:MediaQuery.of(context).size.height*0.2+24,
            child: Row(
              children:List.generate(30,
                      (index) => Expanded(
                        child: Padding(
                          padding:  EdgeInsets.symmetric
                            (horizontal: 2),
                          child: Container(
                            height: 2,
                         color: Color(0xffB8B8B8),
                          ),
                        ),
                      )),
            ),
          ),
          Positioned(
            left: 0.0,right:0.0 ,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor:  Color(0xffEDEDED),
              child: CircleAvatar(
                radius: 40,
              backgroundColor: Color(0xff34A853),
                child: Icon(CupertinoIcons.check_mark,
                  color: Colors.white,
                size: 50.0,
                ),
              ) ,
            ),
          )
        ],
      ),
    );
  }
}


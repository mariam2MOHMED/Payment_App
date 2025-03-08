import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/view/screens/my_cart_screen.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartScreen(),
    );
  }
}

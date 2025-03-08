import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/view/widget/thank_you_view.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: Transform.translate(
        offset: Offset(0, -10),
        child: ThankYouViewBody()),
    );
  }
}

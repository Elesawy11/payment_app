import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

import 'widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text(
          'My Cart',
          style: Styles.style24,
        ),
        centerTitle: true,
      ),
      body:const MyCartViewBody(),
    );
  }
}

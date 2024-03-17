import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/presentation/manger/cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';

import '../../../../../core/widgets/custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentFailure) {
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (state is PaymentSuccess) {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const ThankYouView();
            },
          ));
        }
      },
      builder: (context, state) {
        return CustomButton(
          text: 'Continue',
          onTap: () {},
          isLoading: state is PaymentLoading ? true : false,
        );
      },
    );
  }
}

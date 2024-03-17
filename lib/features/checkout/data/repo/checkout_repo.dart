import 'package:dartz/dartz.dart';
import 'package:payment_app/features/checkout/data/models/payment_intetn_input_model.dart';

import '../../../../core/errors/failures.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}

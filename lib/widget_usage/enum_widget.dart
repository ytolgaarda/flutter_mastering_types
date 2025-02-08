import 'package:flutter/material.dart';

import '../enum/enum.dart';

class PaymentStatusWidget extends StatelessWidget {
  final PaymentStatus paymentStatus;

  const PaymentStatusWidget({super.key, required this.paymentStatus});

  @override
  Widget build(BuildContext context) {
    final handler = paymentStatus.handler;

    handler.handleEnum();

    return Card(
      color: paymentStatus.color,
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(
          paymentStatus.iconData,
        ),
        title: Text(
          paymentStatus.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          paymentStatus.description,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mastering_types/enum/handler.dart';

enum PaymentStatus {
  pending(
    title: 'Pending',
    description: 'Payment is still being processed.',
    color: Colors.blueGrey,
    iconData: Icons.hourglass_empty,
  ),
  completed(
    title: 'Completed',
    description: 'Payment has been successfully processed.',
    color: Colors.green,
    iconData: Icons.check_circle_outline,
  ),
  failed(
    title: 'Failed',
    description: 'Payment processing failed. Please try again.',
    color: Colors.red,
    iconData: Icons.cancel_outlined,
  ),
  canceled(
    title: 'Canceled',
    description: 'Payment has been canceled by the user or system.',
    color: Colors.orange,
    iconData: Icons.remove_circle_outline,
  ),
  refunded(
    title: 'Refunded',
    description: 'Payment has been refunded to the user.',
    color: Colors.blue,
    iconData: Icons.monetization_on_outlined,
  );

  final String title;
  final String description;
  final Color color;
  final IconData iconData;

  const PaymentStatus({
    required this.title,
    required this.description,
    required this.color,
    required this.iconData,
  });

  EnumHandler get handler {
    switch (this) {
      case PaymentStatus.pending:
        return PendingHandler();
      case PaymentStatus.completed:
        return CompletedHandler();
      case PaymentStatus.failed:
        return FailedHandler();
      default:
        throw Exception("Unhandled status");
    }
  }
}

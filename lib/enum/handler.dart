// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

@immutable
abstract class EnumHandler {
  const EnumHandler._();

  void handleEnum();
}

class PendingHandler implements EnumHandler {
  @override
  void handleEnum() {
    print("Payment is still pending.");
  }
}

class CompletedHandler implements EnumHandler {
  @override
  void handleEnum() {
    print("Payment completed successfully.");
  }
}

class FailedHandler implements EnumHandler {
  @override
  void handleEnum() {
    print("Payment failed. Please retry.");
  }
}

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/// [TR] Enumın her bir durumuna göre işlem yapan bir soyut üst sınıf
/// [EN] An abstract superclass that do some handling stuff on each state of the enum
@immutable
abstract class EnumHandler {
  const EnumHandler._();

  void handleEnum();
}

/// [TR] Bu Payment Status enumımıza göre oluşturulmuş örnek sınıflar
/// [EN] These classes are created by PaymentStatus
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

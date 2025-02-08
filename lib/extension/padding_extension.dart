import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  /// [TR] Widget'ı verilen bir padding (boşluk) ile sarar.
  /// [EN] Wraps the widget with a given padding.
  Widget padded([double value = 8.0]) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }
}

/* 
...
Text('Hello GitHub!', style: context.bodyLarge).padded(10),
*/

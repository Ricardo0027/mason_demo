import 'package:flutter/material.dart';

extension IntExtension on int {
  Widget get addHeight => SizedBox(height: toDouble());

  Widget get addWidth => SizedBox(width: toDouble());
}

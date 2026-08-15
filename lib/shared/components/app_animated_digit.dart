import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';

/// Wrapper de [AnimatedDigitWidget] (formato ARS: miles con punto).
///
/// Si cambiamos de lib, solo se toca este archivo.
class AppAnimatedDigit extends StatelessWidget {
  const AppAnimatedDigit({
    super.key,
    required this.value,
    this.textStyle,
    this.prefix = r'$ ',
    this.fractionDigits = 0,
    this.duration = const Duration(milliseconds: 350),
    this.firstScrollAnimate = true,
  });

  final num value;
  final TextStyle? textStyle;
  final String prefix;
  final int fractionDigits;
  final Duration duration;
  final bool firstScrollAnimate;

  @override
  Widget build(BuildContext context) {
    return AnimatedDigitWidget(
      value: value,
      textStyle: textStyle,
      prefix: prefix,
      fractionDigits: fractionDigits,
      enableSeparator: true,
      separateSymbol: '.',
      decimalSeparator: ',',
      duration: duration,
      curve: Curves.easeOutCubic,
      firstScrollAnimate: firstScrollAnimate,
      loop: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../core/theme/meli_colors.dart';

/// Wrapper de pull-to-refresh. Si cambiamos de lib, solo se toca este archivo.
class AppPullToRefresh extends StatelessWidget {
  const AppPullToRefresh({
    super.key,
    required this.onRefresh,
    required this.child,
    this.color = MeliColors.action,
    this.backgroundColor = MeliColors.brand,
    this.showChildOpacityTransition = false,
    this.height = 80,
    this.respectTopSafeArea = true,
  });

  final Future<void> Function() onRefresh;
  final Widget child;
  final Color color;
  final Color backgroundColor;
  final bool showChildOpacityTransition;
  final double height;

  /// Suma el inset superior (Dynamic Island / notch) al [height] de asiento
  /// del indicador, para que no quede tapado.
  final bool respectTopSafeArea;

  @override
  Widget build(BuildContext context) {
    final topInset = respectTopSafeArea
        ? MediaQuery.viewPaddingOf(context).top
        : 0.0;

    return LiquidPullToRefresh(
      onRefresh: onRefresh,
      color: color,
      backgroundColor: backgroundColor,
      showChildOpacityTransition: showChildOpacityTransition,
      height: height + topInset,
      animSpeedFactor: 1.5,
      child: child,
    );
  }
}

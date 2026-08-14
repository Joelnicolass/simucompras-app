import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';

/// Footer de acciones consistente (PDP, checkout, carrito): superficie blanca
/// elevada + SafeArea inferior.
class ActionFooter extends StatelessWidget {
  const ActionFooter({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(16, 12, 16, 12),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      color: MeliColors.surface,
      child: SafeArea(
        top: false,
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';

/// Caja gris reutilizable para imágenes y bloques aún sin contenido real.
class HomePlaceholderBox extends StatelessWidget {
  const HomePlaceholderBox({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 4,
    this.icon = Icons.image_outlined,
    this.label,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final IconData icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MeliColors.divider,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 28, color: MeliColors.textMuted),
          if (label != null) ...[
            const SizedBox(height: 6),
            Text(
              label!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
                color: MeliColors.textSecondary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

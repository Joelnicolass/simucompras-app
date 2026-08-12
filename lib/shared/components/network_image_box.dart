import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';

/// Imagen de red con fallback (sin lógica de negocio).
class NetworkImageBox extends StatelessWidget {
  const NetworkImageBox({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.borderRadius = 0,
    this.backgroundColor = MeliColors.surface,
    this.placeholderIcon = Icons.image_outlined,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final Color backgroundColor;
  final IconData placeholderIcon;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl?.trim();
    final hasUrl = url != null && url.isNotEmpty;

    Widget child;
    if (!hasUrl) {
      child = _Placeholder(icon: placeholderIcon);
    } else {
      child = Image.network(
        url,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (_, _, _) => _Placeholder(icon: placeholderIcon),
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return ColoredBox(
            color: MeliColors.divider,
            child: Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: MeliColors.textMuted,
                  value: progress.expectedTotalBytes != null
                      ? progress.cumulativeBytesLoaded /
                          progress.expectedTotalBytes!
                      : null,
                ),
              ),
            ),
          );
        },
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: ColoredBox(
        color: backgroundColor,
        child: SizedBox(
          width: width,
          height: height,
          child: child,
        ),
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.divider,
      child: Center(
        child: Icon(icon, color: MeliColors.textMuted, size: 32),
      ),
    );
  }
}

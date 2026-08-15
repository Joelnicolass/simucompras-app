import 'package:flutter/material.dart';
import 'package:heroine/heroine.dart';

/// Tope de duración para transiciones / efectos de paso.
const Duration kAppMotionMax = Duration(milliseconds: 350);

/// Tags estables para transiciones heroine (producto, etc.).
abstract final class AppHeroTags {
  static String productImage(String productId) => 'product-image-$productId';
}

/// Wrapper de [Heroine]. Si cambiamos de lib, solo se toca este archivo.
class AppHero extends StatelessWidget {
  const AppHero({
    super.key,
    required this.tag,
    required this.child,
    this.enableFlight = true,
  });

  final String tag;
  final Widget child;

  /// Permite desactivar el vuelo (p. ej. listas densas).
  final bool enableFlight;

  @override
  Widget build(BuildContext context) {
    if (!enableFlight) return child;

    return Heroine(
      tag: tag,
      // Curva acotada (≤400ms): el spring default se siente lento.
      motion: const CurvedMotion(kAppMotionMax, Curves.easeOutCubic),
      flightShuttleBuilder: const FadeShuttleBuilder(),
      child: child,
    );
  }
}

/// Wrapper de dismiss por drag (PDP). Por defecto hace pop de la ruta.
class AppDragDismiss extends StatelessWidget {
  const AppDragDismiss({
    super.key,
    required this.child,
    this.onDismiss,
  });

  final Widget child;

  /// Si es null, usa el pop automático de [DragDismissable].
  final VoidCallback? onDismiss;

  @override
  Widget build(BuildContext context) {
    if (onDismiss == null) {
      return DragDismissable(
        motion: const CurvedMotion(kAppMotionMax, Curves.easeOutCubic),
        child: child,
      );
    }
    return DragDismissable.custom(
      onDismiss: onDismiss,
      motion: const CurvedMotion(kAppMotionMax, Curves.easeOutCubic),
      child: child,
    );
  }
}

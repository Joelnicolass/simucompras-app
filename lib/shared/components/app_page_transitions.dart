import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Transición de página jugosa reutilizable (fade + soft slide).
///
/// Independiente de heroine: sirve cuando el hero no puede volar entre
/// navigators (p. ej. shell → root).
class AppPageTransitions {
  const AppPageTransitions._();

  static CustomTransitionPage<T> softFadeSlide<T>({
    required LocalKey key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 280),
  }) {
    return CustomTransitionPage<T>(
      key: key,
      child: child,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
          reverseCurve: Curves.easeInCubic,
        );
        return FadeTransition(
          opacity: curved,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.04),
              end: Offset.zero,
            ).animate(curved),
            child: child,
          ),
        );
      },
    );
  }
}

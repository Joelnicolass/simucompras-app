import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/meli_colors.dart';
import '../../core/theme/meli_radii.dart';
import 'app_hero.dart';

/// Feedbacks de UI reutilizables.
abstract final class AppFeedback {
  static OverlayEntry? _addedToCartEntry;

  /// Toast compacto bajo el AppBar, alineado al ícono del carrito.
  ///
  /// Queda casi colapsado: flecha hacia arriba + “Ver”, sin tapar el CTA.
  static void addedToCart(BuildContext context) {
    HapticFeedback.lightImpact();
    _addedToCartEntry?.remove();
    _addedToCartEntry = null;

    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (ctx) => _AddedToCartHint(
        onClose: () {
          entry.remove();
          if (_addedToCartEntry == entry) _addedToCartEntry = null;
        },
        onViewCart: () {
          entry.remove();
          if (_addedToCartEntry == entry) _addedToCartEntry = null;
          if (context.mounted) context.push('/cart');
        },
      ),
    );
    _addedToCartEntry = entry;
    Overlay.of(context).insert(entry);
  }

  static void showError(BuildContext context, String message) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: MeliColors.danger,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        shape: const RoundedRectangleBorder(borderRadius: MeliRadii.cardAll),
        content: Text(message),
      ),
    );
  }

  static void showSuccess(BuildContext context, String message) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: MeliColors.success,
        duration: const Duration(seconds: 4),
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        shape: const RoundedRectangleBorder(borderRadius: MeliRadii.cardAll),
        content: Text(
          message,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class _AddedToCartHint extends StatefulWidget {
  const _AddedToCartHint({required this.onClose, required this.onViewCart});

  final VoidCallback onClose;
  final VoidCallback onViewCart;

  @override
  State<_AddedToCartHint> createState() => _AddedToCartHintState();
}

class _AddedToCartHintState extends State<_AddedToCartHint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  late final Animation<Offset> _slide;
  Timer? _autoClose;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: kAppMotionMax);
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic);
    _slide = Tween<Offset>(
      begin: const Offset(0, -0.35),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _controller.forward();
    _autoClose = Timer(const Duration(seconds: 3), _dismiss);
  }

  Future<void> _dismiss() async {
    if (!mounted) return;
    await _controller.reverse();
    if (mounted) widget.onClose();
  }

  @override
  void dispose() {
    _autoClose?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Debajo del AppBar, a la derecha (bajo el ícono del carrito).
    final top = MediaQuery.paddingOf(context).top + kToolbarHeight + 4;

    return Positioned(
      top: top,
      right: 8,
      child: FadeTransition(
        opacity: _fade,
        child: SlideTransition(
          position: _slide,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onViewCart,
              borderRadius: MeliRadii.cardAll,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Flecha apuntando al carrito del header.
                  const Icon(
                    Icons.arrow_drop_up_rounded,
                    color: MeliColors.success,
                    size: 28,
                    shadows: [
                      Shadow(
                        color: Color(0x33000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: MeliColors.success,
                        borderRadius: MeliRadii.cardAll,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 14,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Producto agregado al carrito',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

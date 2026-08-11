import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({
    super.key,
    this.currentIndex = 0,
    this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int>? onTap;

  static const _items = [
    (Icons.home_outlined, Icons.home, 'Inicio'),
    (Icons.favorite_border, Icons.favorite, 'Favoritos'),
    (Icons.notifications_none, Icons.notifications, 'Avisos'),
    (Icons.person_outline, Icons.person, 'Mi cuenta'),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      color: MeliColors.surface,
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 58,
          child: Row(
            children: [
              for (var i = 0; i < _items.length; i++)
                Expanded(
                  child: InkWell(
                    onTap: () => onTap?.call(i),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentIndex == i ? _items[i].$2 : _items[i].$1,
                          color: currentIndex == i
                              ? MeliColors.action
                              : MeliColors.navInactive,
                          size: 24,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _items[i].$3,
                          style: TextStyle(
                            fontSize: 11,
                            color: currentIndex == i
                                ? MeliColors.action
                                : MeliColors.navInactive,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

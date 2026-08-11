import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({
    super.key,
    this.onSearchTap,
    this.onCartTap,
    this.onMenuTap,
    this.onLocationTap,
    this.onLogoLongPress,
  });

  final VoidCallback? onSearchTap;
  final VoidCallback? onCartTap;
  final VoidCallback? onMenuTap;
  final VoidCallback? onLocationTap;
  final VoidCallback? onLogoLongPress;

  @override
  Size get preferredSize => const Size.fromHeight(108);

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return Material(
      color: MeliColors.brand,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: top),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
            child: Row(
              children: [
                GestureDetector(
                  onLongPress: onLogoLongPress,
                  child: const HomePlaceholderBox(
                    width: 40,
                    height: 28,
                    borderRadius: 4,
                    icon: Icons.storefront_outlined,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: onSearchTap,
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: MeliColors.surface,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 22,
                            color: MeliColors.textSecondary,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Estoy buscando…',
                              style: TextStyle(
                                fontSize: 14,
                                color: MeliColors.textSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onCartTap,
                  icon: const Icon(Icons.shopping_cart_outlined),
                  color: MeliColors.textDark,
                ),
                IconButton(
                  onPressed: onMenuTap,
                  icon: const Icon(Icons.menu),
                  color: MeliColors.textDark,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onLocationTap,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: MeliColors.textDark,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Enviar a Capital Federal',
                      style: TextStyle(
                        fontSize: 13,
                        color: MeliColors.textDark,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    size: 18,
                    color: MeliColors.textDark,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

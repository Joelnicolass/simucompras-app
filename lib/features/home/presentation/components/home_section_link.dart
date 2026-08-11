import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';

class HomeSectionLink extends StatelessWidget {
  const HomeSectionLink({
    super.key,
    required this.label,
    this.onTap,
  });

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  color: MeliColors.action,
                ),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              size: 20,
              color: MeliColors.action,
            ),
          ],
        ),
      ),
    );
  }
}

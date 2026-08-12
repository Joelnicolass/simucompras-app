import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';

/// Vista mínima de categoría (placeholder hasta el listado de catálogo).
class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  final String categoryId;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: Text(
          categoryName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.category_outlined,
                size: 48,
                color: MeliColors.action,
              ),
              const SizedBox(height: 16),
              Text(
                categoryName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Categoría $categoryId\nPróximamente: listado de productos.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: MeliColors.textSecondary,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

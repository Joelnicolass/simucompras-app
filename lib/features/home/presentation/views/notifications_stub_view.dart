import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';

class NotificationsStubView extends StatelessWidget {
  const NotificationsStubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        automaticallyImplyLeading: false,
        title: const Text(
          'Avisos',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: const Center(
        child: Text(
          'Sin avisos por ahora',
          style: TextStyle(color: MeliColors.textSecondary),
        ),
      ),
    );
  }
}

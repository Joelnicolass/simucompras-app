import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';

/// Estilos de animación de texto soportados por el wrapper.
///
/// Sin fade: el fade vacía el layout y hace saltar los contenedores.
enum AppTextAnimationStyle { typer, typewriter, colorize, wavy }

/// Wrapper de textos animados ([animated_text_kit]).
/// Cambiar de librería = tocar solo este archivo.
class AppAnimatedText extends StatelessWidget {
  const AppAnimatedText({
    super.key,
    required this.texts,
    this.style = AppTextAnimationStyle.colorize,
    this.textStyle,
    this.colorizeColors,
    this.repeatForever = true,
    this.pause = const Duration(milliseconds: 1200),
  });

  /// Una o más frases que rotan / animan.
  final List<String> texts;
  final AppTextAnimationStyle style;
  final TextStyle? textStyle;

  /// Colores del modo [AppTextAnimationStyle.colorize].
  final List<Color>? colorizeColors;
  final bool repeatForever;
  final Duration pause;

  @override
  Widget build(BuildContext context) {
    final resolved = textStyle ??
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: MeliColors.textDark,
        );

    if (texts.isEmpty) return const SizedBox.shrink();

    // Reserva alto estable (evita saltos al cambiar de frase).
    final lineHeight = (resolved.fontSize ?? 16) * (resolved.height ?? 1.25);
    final reservedHeight = lineHeight.ceilToDouble();

    return SizedBox(
      height: reservedHeight,
      child: AnimatedTextKit(
        key: ValueKey('${style.name}-${texts.join('|')}'),
        repeatForever: repeatForever,
        pause: pause,
        isRepeatingAnimation: true,
        displayFullTextOnTap: true,
        animatedTexts: [
          for (final text in texts) _buildAnimated(text, resolved),
        ],
      ),
    );
  }

  AnimatedText _buildAnimated(String text, TextStyle textStyle) {
    return switch (style) {
      AppTextAnimationStyle.typer => TyperAnimatedText(
        text,
        textStyle: textStyle,
        speed: const Duration(milliseconds: 45),
      ),
      AppTextAnimationStyle.typewriter => TypewriterAnimatedText(
        text,
        textStyle: textStyle,
        speed: const Duration(milliseconds: 50),
        cursor: '|',
      ),
      AppTextAnimationStyle.colorize => ColorizeAnimatedText(
        text,
        textStyle: textStyle,
        colors: colorizeColors ??
            const [
              MeliColors.action,
              MeliColors.success,
              Color(0xFFE67E22),
              MeliColors.action,
            ],
      ),
      AppTextAnimationStyle.wavy => WavyAnimatedText(
        text,
        textStyle: textStyle,
        speed: const Duration(milliseconds: 120),
      ),
    };
  }
}

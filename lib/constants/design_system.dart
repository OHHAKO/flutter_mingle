import 'package:flutter/material.dart';

class DesignSystem {
  // Colors
  static const Color primaryBrown = Color(0xFF8B4513);
  static const Color backgroundBeige = Color(0xFFFFF8DC);
  static const Color surface = Colors.white;
  static const Color textBrown = Color(0xFF8B4513);
  static const Color textGrey = Colors.grey;
  
  // Typography
  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textBrown,
  );
  
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 20,
    color: textBrown,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    color: textBrown,
  );
  
  // Spacing
  static const double spacing8 = 8.0;
  static const double spacing16 = 16.0;
  static const double spacing20 = 20.0;
  static const double spacing24 = 24.0;
  
  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  
  // Shadows
  static List<BoxShadow> shadowSmall = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];
  
  // Animation Durations
  static const Duration animationFast = Duration(milliseconds: 200);
  static const Duration animationNormal = Duration(milliseconds: 300);
  
  // Breakpoints
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 900.0;
  static const double desktopBreakpoint = 1200.0;
} 
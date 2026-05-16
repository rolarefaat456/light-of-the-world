enum FontSizeLevel {
  verySmall(0.8),
  small(0.9),
  medium(1.0),
  large(1.1),
  veryLarge(1.2);

  final double scale;
  const FontSizeLevel(this.scale);
}

double fontScaleFromLevel(FontSizeLevel level) {
  switch (level) {
    case FontSizeLevel.verySmall:
      return 0.8;

    case FontSizeLevel.small:
      return 0.9;

    case FontSizeLevel.medium:
      return 1.0;

    case FontSizeLevel.large:
      return 1.1;

    case FontSizeLevel.veryLarge:
      return 1.2;
  }
}

FontSizeLevel valueToLevel(double value) {
  if (value <= 0.85) return FontSizeLevel.verySmall;
  if (value <= 0.95) return FontSizeLevel.small;
  if (value <= 1.05) return FontSizeLevel.medium;
  if (value <= 1.15) return FontSizeLevel.large;
  return FontSizeLevel.veryLarge;
}

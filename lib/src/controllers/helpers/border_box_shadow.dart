import 'package:flutter/painting.dart';

/// Custom BoxShadow that can be passed its [BlurStyle].
///
/// This is used to show an outer shadow blur for object controls.
class BorderBoxShadow extends BoxShadow {
  /// The blur style to use.
  final BlurStyle blurStyle;

  /// Creates a new [BorderBoxShadow] with the given `blurStyle` and other arguments matching [BoxShadow].
  const BorderBoxShadow({
    super.color,
    super.offset,
    super.blurRadius,
    super.spreadRadius,
    this.blurStyle = BlurStyle.outer,
  });

  /// Create the [Paint] object that corresponds to this shadow description.
  ///
  /// This is an overridden method that uses the passed [blurStyle] instead of defaulting to [BlurStyle.normal].
  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}

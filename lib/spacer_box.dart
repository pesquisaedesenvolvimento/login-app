import 'package:flutter/material.dart';

class CustomSpacer {
  static const double min = 8;
  static const double middle = 16;
  static const double max = 32;
}

class CustomSpacerBox {
  // Vertical Spaces
  static const v8 = SizedBox(
    height: CustomSpacer.min,
  );
  static const v16 = SizedBox(
    height: CustomSpacer.middle,
  );
  static const v32 = SizedBox(
    height: CustomSpacer.max,
  );

  // Horizontal Spaces
  static const h8 = SizedBox(
    width: CustomSpacer.min,
  );
  static const h16 = SizedBox(
    width: CustomSpacer.middle,
  );

  static const h32 = SizedBox(
    width: CustomSpacer.max,
  );
}

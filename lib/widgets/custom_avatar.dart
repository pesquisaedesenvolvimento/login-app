import 'package:flutter/material.dart';
import 'package:login_app/spacer_box.dart';

class CustomAvatar extends StatelessWidget {
  final ImageProvider backgroundImage;
  final double? radius;

  const CustomAvatar({
    Key? key,
    required this.backgroundImage,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? CustomSpacer.max / 1.7,
      backgroundColor: Colors.transparent,
      backgroundImage: backgroundImage,
    );
  }
}

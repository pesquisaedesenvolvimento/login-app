import 'package:flutter/material.dart';
import 'package:login_app/spacer_box.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: CustomSpacer.max,
        horizontal: CustomSpacer.middle,
      ),
      child: child,
    );
  }
}

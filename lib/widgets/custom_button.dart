import 'package:flutter/material.dart';
import 'package:login_app/custom_font_size.dart';
import 'package:login_app/extensions/extensions_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.swipeColors,
  }) : super(key: key);

  final String text;
  final Function onTap;
  final double? width;
  final double? height;
  final bool? swipeColors;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _raisedButtonStyle = ElevatedButton.styleFrom(
      primary: swipeColors == true
          ? Theme.of(context).backgroundColor
          : Theme.of(context).primaryColor,
      minimumSize:
          Size(width ?? MediaQuery.of(context).size.width, height ?? 45),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
    );

    return ElevatedButton(
      style: _raisedButtonStyle,
      onPressed: () {
        onTap();
      },
      child: text.description(
        context,
        fontSize: CustomFontSize.f25,
        color: swipeColors == true
            ? Theme.of(context).primaryColor
            : Theme.of(context).backgroundColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';

extension Texts on String {
  Widget title(
    BuildContext context, {
    Color? color,
  }) {
    var _theme = Theme.of(context);
    return Text(
      this,
      style: TextStyle(
          color: color ?? _theme.textTheme.headline2!.color,
          fontSize: _theme.textTheme.headline2!.fontSize,
          fontWeight: FontWeight.w300),
    );
  }

  Widget description(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) {
    var _theme = Theme.of(context);
    return Text(
      this,
      style: TextStyle(
        color: color ?? _theme.textTheme.headline4!.color,
        fontSize: fontSize ?? _theme.textTheme.headline4!.fontSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget link(
    BuildContext context,
    Function onTap, {
    double? fontSize,
  }) {
    var _theme = Theme.of(context);
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Text(
        this,
        style: TextStyle(
          color: _theme.primaryColor,
          fontSize: fontSize ?? _theme.textTheme.headline4!.fontSize,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

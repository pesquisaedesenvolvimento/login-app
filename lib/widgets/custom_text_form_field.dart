import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.validate,
    required this.hintText,
    required this.labelText,
    required this.textInputType,
    this.controller,
    this.maxLines,
    this.prefixIcon,
  }) : super(key: key);

  final String? Function(String?)? validate;
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  final int? maxLines;
  final TextEditingController? controller;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        labelText: labelText,
      ),
      validator: validate,
    );
  }
}

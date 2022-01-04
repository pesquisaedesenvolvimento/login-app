import 'package:flutter/material.dart';

class TextFormFieldPassword extends StatefulWidget {
  const TextFormFieldPassword({
    Key? key,
    this.validate,
    required this.hintText,
    required this.labelText,
    required this.textInputType,
    this.maxLines,
    this.controller,
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
  _TextFormFieldPasswordState createState() => _TextFormFieldPasswordState();
}

class _TextFormFieldPasswordState extends State<TextFormFieldPassword> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !_passwordVisible,
      keyboardType: widget.textInputType,
      validator: widget.validate,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
          padding: const EdgeInsets.all(0),
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).textTheme.caption!.color!,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        hintText: widget.hintText,
        labelText: widget.labelText,
      ),
    );
  }
}

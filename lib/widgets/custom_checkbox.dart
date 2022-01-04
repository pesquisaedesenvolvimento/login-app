import 'package:flutter/material.dart';
import 'package:login_app/custom_font_size.dart';
import 'package:login_app/spacer_box.dart';
import 'package:login_app/extensions/extensions_text.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: [
          SizedBox(
            height: 24.0,
            width: 24.0,
            child: Checkbox(
              value: value,
              activeColor: Colors.transparent,
              checkColor: Theme.of(context).textTheme.caption!.color,
              side: MaterialStateBorderSide.resolveWith(
                (states) => BorderSide(
                  width: 0.6,
                  color: Theme.of(context).textTheme.caption!.color!,
                ),
              ),
              onChanged: (bool? newValue) {
                onChanged(newValue);
              },
            ),
          ),
          CustomSpacerBox.h8,
          label.description(
            context,
            color: Theme.of(context).textTheme.caption!.color,
            fontSize: CustomFontSize.f14,
          ),
        ],
      ),
    );
  }
}

import 'package:fashion_daily/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final Widget? prefixIcon;
  final String? hintText;

  const CustomTextFormField({
    Key? key,
    required this.inputType,
    this.prefixIcon,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Constants.kButtonBlue)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Constants.kLightGrey)),
        errorBorder: const OutlineInputBorder(),
        fillColor: Constants.kFillGrey,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: hintText != null
            ? const TextStyle(color: Constants.kMediumGrey)
            : null,
      ),
    );
  }
}

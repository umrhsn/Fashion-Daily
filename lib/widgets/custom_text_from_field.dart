import 'package:fashion_daily/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final Widget? prefixIcon;
  final String? hintText;
  final String headerText;
  final double headerFontSize;
  final bool isPassword;

  const CustomTextFormField({
    Key? key,
    required this.inputType,
    this.prefixIcon,
    this.hintText,
    required this.headerFontSize,
    required this.headerText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              headerText,
              style: TextStyle(color: Colors.grey, fontSize: headerFontSize),
            ),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Constants.kButtonBlue)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Constants.kMediumGrey)),
            errorBorder: const OutlineInputBorder(),
            fillColor: Constants.kFillGrey,
            prefixIcon: prefixIcon,
            suffixIcon: isPassword
                ? Icon(Icons.remove_red_eye, color: Colors.black)
                : null,
            hintText: hintText,
            hintStyle: hintText != null
                ? const TextStyle(color: Constants.kMediumGrey)
                : null,
          ),
        ),
      ],
    );
  }
}

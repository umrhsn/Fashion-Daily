import 'package:fashion_daily/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Alignment alignment;
  final EdgeInsetsGeometry? innerPadding;
  final double height;
  final double? minWidth;
  final double elevation;
  final double fontSize;
  final double borderRadius;
  final FontWeight fontWeight;
  final Color buttonColor;
  final Color buttonColorOutlined;
  final Color textColor;
  final Color textColorOutlined;
  final String text;
  final Function onPressed;
  final bool isCapitalized;
  final bool isOutlined;
  final bool isIconed;

  const CustomButton({
    Key? key,
    this.alignment = Alignment.center,
    this.innerPadding,
    this.height = 50,
    this.minWidth = double
        .infinity, // set to 0 to wrap content, set to null to have the default width
    this.elevation = 0,
    this.fontSize = 16,
    this.borderRadius = 3.0,
    this.fontWeight = FontWeight.normal,
    this.buttonColor = Constants.kButtonBlue,
    this.buttonColorOutlined = Colors.white,
    this.textColor = Colors.white,
    this.textColorOutlined = Constants.kButtonBlue,
    required this.text,
    required this.onPressed,
    this.isCapitalized = false,
    this.isOutlined = false,
    this.isIconed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: MaterialButton(
          height: height,
          minWidth: minWidth,
          padding: innerPadding,
          shape: isOutlined
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: Constants.kButtonBlue),
                  borderRadius: BorderRadius.circular(borderRadius))
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
          onPressed: () {
            onPressed;
          },
          elevation: elevation,
          color: isOutlined ? buttonColorOutlined : buttonColor,
          child: isIconed
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/google_logo.png'),
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text(isCapitalized ? text.toUpperCase() : text,
                        style: TextStyle(
                            fontSize: isOutlined ? null : fontSize,
                            fontWeight: fontWeight,
                            color: isOutlined ? textColorOutlined : textColor))
                  ],
                )
              : Text(isCapitalized ? text.toUpperCase() : text,
                  style: TextStyle(
                      fontSize: isOutlined ? null : fontSize,
                      fontWeight: fontWeight,
                      color: isOutlined ? textColorOutlined : textColor)),
        ),
      ),
    );
  }
}

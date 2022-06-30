import 'dart:math';

import 'package:fashion_daily/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  final double factor;
  final bool backButton;
  final void Function()? backButtonOnTap;

  const CustomStack({
    Key? key,
    required this.factor,
    this.backButton = false,
    this.backButtonOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return ClipRRect(
      child: Stack(
        children: [
          Container(
            height: height * factor,
            width: double.infinity,
            color: Constants.kBlue,
          ),
          Transform.rotate(
            angle: pi / 14,
            child: Container(
              height: height * 0.6 * factor,
              width: height * 0.6 * factor,
              color: Constants.kPink,
              transform: Matrix4.translationValues(
                  -height / 3.8 * factor, -height / 70 * factor, 0),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              transform: Matrix4.translationValues(
                  height / 15 * factor, -height / 5 * factor, 0.0),
              child: Transform.rotate(
                angle: -pi / 6,
                child: Image(
                  height: height * 0.6 * factor,
                  width: height * 0.6 * factor,
                  color: Constants.kLightBlue,
                  image: AssetImage('assets/images/dotted_square.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform.rotate(
              alignment: Alignment.bottomRight,
              angle: pi / 8,
              child: Container(
                height: height * 0.55 * factor,
                width: height * 0.55 * factor,
                color: Constants.kYellow,
                transform: Matrix4.translationValues(
                    height / 2.6 * factor, height / 2 * factor, 0.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Transform(
              transform: Matrix4.translationValues(
                  height / 2.5 * factor, height / 1.9 * factor, 0),
              child: ClipOval(
                child: Container(
                  height: height * 0.34 * factor,
                  width: height * 0.34 * factor,
                  color: Constants.kLightBlue,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: backButtonOnTap,
            child: Transform(
              transform: Matrix4.translationValues(
                  height / 4 * factor, height / 2 * factor, 0),
              child: Container(
                  height: 40,
                  width: 40,
                  child: backButton
                      ? ClipOval(
                          child: Container(
                              color: Colors.black,
                              child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: height / 40,
                                ),
                              )))
                      : null),
            ),
          ),
        ],
      ),
    );
  }
}

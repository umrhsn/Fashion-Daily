import 'dart:math';

import 'package:fashion_daily/utils/constants.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // TODO:
          //   - make stack reusable
          //   - make sizes and translation values flexible via MediaQuery
          ClipRRect(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  color: Constants.kBlue,
                ),
                Transform.rotate(
                  angle: pi / 14,
                  child: Container(
                    height: 170,
                    width: 170,
                    color: Constants.kPink,
                    transform: Matrix4.translationValues(-80.0, -10.0, 0.0),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    transform: Matrix4.translationValues(20.0, -65.0, 0.0),
                    child: Transform.rotate(
                      angle: -pi / 6,
                      child: const Image(
                        height: 180,
                        width: 180,
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
                      height: 165,
                      width: 165,
                      color: Constants.kYellow,
                      transform: Matrix4.translationValues(120.0, 155.0, 0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Transform(
                    transform: Matrix4.translationValues(120, 165, 0),
                    child: ClipOval(
                      child: Container(
                          height: 90, width: 90, color: Constants.kLightBlue),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Welcome to Fashion Daily',
                style: TextStyle(color: Colors.grey)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Sign in'),
              Row(
                children: const [
                  Text(
                    'Help',
                    style: TextStyle(color: Constants.kButtonBlue),
                  ),
                  Icon(
                    Icons.help,
                    color: Constants.kButtonBlue,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

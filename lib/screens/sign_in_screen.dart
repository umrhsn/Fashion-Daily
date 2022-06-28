import 'dart:math';

import 'package:fashion_daily/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_stack.dart';

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
          //   currently it's just moved to another file to lessen the widget tree size
          const CustomStack(),
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

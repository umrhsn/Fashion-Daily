import 'dart:math';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashion_daily/screens/register_screen.dart';
import 'package:fashion_daily/utils/constants.dart';
import 'package:fashion_daily/widgets/custom_button.dart';
import 'package:fashion_daily/widgets/custom_text_from_field.dart';
import 'package:fashion_daily/widgets/text_divider.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_stack.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final fontSizeSmall = height * 0.0165;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const CustomStack(factor: 1 / 3),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Welcome to Fashion Daily',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(fontSize: height * 0.043),
                      ),
                      const Spacer(),
                      Text(
                        'Help',
                        style: TextStyle(
                            color: Constants.kButtonBlue,
                            fontSize: fontSizeSmall),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.help,
                        color: Constants.kButtonBlue,
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: CustomTextFormField(
                          headerText: 'Phone Number',
                          headerFontSize: fontSizeSmall,
                          inputType: TextInputType.phone,
                          prefixIcon: CountryCodePicker(
                            onChanged: print,
                            initialSelection: 'EG',
                            favorite: const ['+20', 'EG'],
                            showFlagDialog: false,
                            showFlag: false,
                            showDropDownButton: true,
                          ),
                          hintText: 'Eg. 812345678',
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomButton(text: 'Sign In', onPressed: () {}),
                  const Spacer(),
                  const TextDivider(text: 'Or'),
                  const Spacer(),
                  CustomButton(
                    text: 'Sign in by Google',
                    onPressed: () {},
                    isOutlined: true,
                    isIconed: true,
                  ),
                  const Spacer(flex: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(fontSize: fontSizeSmall),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => RegisterScreen()));
                        },
                        child: Text('Register here',
                            style: TextStyle(
                                color: Constants.kButtonBlue,
                                fontSize: fontSizeSmall)),
                      )
                    ],
                  ),
                  const Spacer(flex: 2),
                  const Center(
                    child: Text(
                      'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

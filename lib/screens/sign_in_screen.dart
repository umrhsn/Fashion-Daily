import 'dart:math';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashion_daily/utils/constants.dart';
import 'package:fashion_daily/widgets/custom_button.dart';
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
    return Scaffold(
      body: Column(
        children: [
          // TODO:
          //   - make stack reusable
          //   - make sizes and translation values flexible via MediaQuery
          //   currently it's just moved to another file to lessen the widget tree size
          const CustomStack(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Welcome to Fashion Daily',
                      style: TextStyle(color: Colors.grey)),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 40),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Help',
                          style: TextStyle(
                              color: Constants.kButtonBlue, fontSize: 15),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.help,
                          color: Constants.kButtonBlue,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      key: _formKey,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        fillColor: Constants.kFillGrey,
                        prefixIcon: CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'EG',
                          favorite: ['+20', 'EG'],
                          showFlagDialog: false,
                          showFlag: false,
                          showDropDownButton: true,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Constants.kLightGrey)),
                        hintText: 'Eg. 812345678',
                        hintStyle: TextStyle(color: Constants.kMediumGrey),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                CustomButton(text: 'Sign In', onPressed: () {}),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Divider()),
                    Text('Or'),
                    Flexible(child: Divider())
                  ],
                ),
                SizedBox(height: 15),
                CustomButton(
                  text: 'Sign in by Google',
                  onPressed: () {},
                  isOutlined: true,
                  isIconed: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text('Register here',
                          style: TextStyle(
                              color: Constants.kButtonBlue, fontSize: 16))
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

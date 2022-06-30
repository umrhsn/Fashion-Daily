import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashion_daily/screens/sign_in_screen.dart';
import 'package:fashion_daily/utils/constants.dart';
import 'package:fashion_daily/widgets/custom_button.dart';
import 'package:fashion_daily/widgets/custom_stack.dart';
import 'package:fashion_daily/widgets/custom_text_from_field.dart';
import 'package:fashion_daily/widgets/text_divider.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final fontSizeSmall = height * 0.0165;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          CustomStack(
            factor: 1 / 7,
            backButton: true,
            backButtonOnTap: () => Navigator.pop(context),
          ),
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
                        'Register',
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
                  const Spacer(),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          headerText: 'Email',
                          headerFontSize: fontSizeSmall,
                          inputType: TextInputType.emailAddress,
                          hintText: 'Eg. example@email.com',
                        ),
                        CustomTextFormField(
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
                        CustomTextFormField(
                          headerText: 'Password',
                          headerFontSize: fontSizeSmall,
                          inputType: TextInputType.visiblePassword,
                          hintText: 'Password',
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  CustomButton(text: 'Register', onPressed: () {}),
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
                        'Already have an account? ',
                        style: TextStyle(fontSize: fontSizeSmall),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const SignInScreen()));
                        },
                        child: Text('Sign in here',
                            style: TextStyle(
                                color: Constants.kButtonBlue,
                                fontSize: fontSizeSmall)),
                      )
                    ],
                  ),
                  const Spacer(flex: 2),
                  Column(
                    children: [
                      const Center(
                        child: Text(
                          'By registering your account, you are agreeing to our',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      Center(
                          child: Text(
                        'terms and conditions',
                        style: TextStyle(color: Constants.kButtonBlue),
                      ))
                    ],
                  ),
                  const Spacer(flex: 2)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

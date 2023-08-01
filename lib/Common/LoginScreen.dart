import 'package:flutter/material.dart';
import 'package:hellolead/Common/EnterCode.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTexts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20,100,20,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarHeadingText(
                text: 'My number is',
              ),
              SizedBox(
                height: height * 0.1,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'FR',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                controller: phoneController,
              ),
              SizedBox(
                height: height * 0.1,
              ),
              ParagraphText(text: 'When you tap "Continue", Tinder will send a text with verification code. Message and data rates may apply. The verified phone number can be used to log in. Learn what happens when your number changes'),
              SizedBox(
                height: height * 0.3,
              ),
              Center(child: CustomButton(onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnterCode()));
              }, text: 'Send OTP',width: width* 0.7,))
            ],
          ),
        ),
      ),
    );
  }
}

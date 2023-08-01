import 'package:flutter/material.dart';

import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController currentPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController conPasswordController = TextEditingController();
    bool hideCurrentPassword = true;
    bool hideNewPassword = true;
    bool hideConfirmPassword = true;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context: context, title: "Change Password"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                controller: currentPasswordController,
                hintText: "Current Password",
                obscureText: hideCurrentPassword,
                suffixIcon: hideCurrentPassword==false?"assets/images/HidePassIcon.svg":"assets/images/ShowPassIcon.svg",
                errormsg: 'Enter password',
                suffixAction: () {
                  print("show....$hideCurrentPassword");

                  setState(() {
                    // hideCurrentPassword = !hideCurrentPassword;
                  });
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomTextField(
                controller: newPasswordController,
                hintText: "New Password",
                obscureText: hideNewPassword,
                suffixIcon: hideNewPassword==true?"assets/images/HidePassIcon.svg":"assets/images/ShowPassIcon.svg",
                errormsg: 'Enter password',
                suffixAction: () {
                  setState(() {
                    hideNewPassword = !hideNewPassword;
                  });
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomTextField(
                controller: conPasswordController,
                hintText: "Confirm Password",
                obscureText: hideConfirmPassword,
                suffixIcon: hideConfirmPassword==true?"assets/images/HidePassIcon.svg":"assets/images/ShowPassIcon.svg",
                errormsg: 'Enter password',
                suffixAction: () {
                  setState(() {
                    hideConfirmPassword = !hideConfirmPassword;
                  });
                },
              ),
              SizedBox(
                height: height * 0.1,
              ),
              CustomButton(
                text: "SAVE",
                width: width * width,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

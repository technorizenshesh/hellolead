import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hellolead/Common/FAQSupport.dart';
import 'package:hellolead/Common/RegisterOtp.dart';
import 'package:hellolead/Constants/GlobalData.dart';
import 'package:hellolead/Constants/color_constant.dart';
import 'package:hellolead/Widgets/CustomAppBar.dart';
import 'package:hellolead/Widgets/CustomSnackBar.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/CustomTexts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController profileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String dropdownValue = 'ADMIN';

  bool showPassword = false;
  String? _value;
  bool agreeCondition = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context: context),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ParagraphText(
                    text: "Create your",
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.greyDark,
                  ),
                  ParagraphText(
                    text: " account",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.blueGreen,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ParagraphText(
                text: "Enter all the details below",
                color: ColorConstant.greyMedium,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                controller: nameController,
                hintText: 'Full Name',
                prefixIcon: 'assets/images/PersonIcon.svg',
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomTextField(
                controller: companyController,
                hintText: 'Add Company',
                prefixIcon: 'assets/images/CompanyIcon.svg',
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xffF5F4F8),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: SvgPicture.asset(
                          "assets/images/ChooseProfileIcon.svg",
                          width: 30,
                          height: 30,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Choose Profile',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.black45),
                        ),
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text('ADMIN',style: TextStyle(color: Colors.black,fontSize: 15),),
                            value: "ADMIN",
                          ),
                          DropdownMenuItem(
                            child: Text('CUSTOMER',style: TextStyle(color: Colors.black,fontSize: 15),),
                            value: "CUSTOMER",
                          ),
                          DropdownMenuItem(
                            child: Text('LANDOWNER',style: TextStyle(color: Colors.black,fontSize: 15),),
                            value: "LANDOWNER",
                          ),
                          DropdownMenuItem(
                            child: Text('AGENT',style: TextStyle(color: Colors.black,fontSize: 15),),
                            value: "AGENT",
                          ),
                          DropdownMenuItem(
                            child: Text('INVESTOR',style: TextStyle(color: Colors.black,fontSize: 15),),
                            value: "INVESTOR",
                          ),
                        ],
                        onChanged: (v) {
                          setState(() {
                            _value = v!;
                            UserType = _value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     SvgPicture.asset('assets/images/ChooseProfileIcon.svg'),
              //     SizedBox(width: width*0.05,),
              //     DropdownButton<String>(
              //       // Step 3.
              //       value: dropdownValue,
              //       // Step 4.
              //       items: <String>['ADMIN','CUSTOMER','LANDOWNER','AGENT','INVESTOR']
              //           .map<DropdownMenuItem<String>>((String value) {
              //         return DropdownMenuItem<String>(
              //           value: value,
              //           child: Text(
              //             value,
              //             style: TextStyle(fontSize: 30),
              //           ),
              //         );
              //       }).toList(),
              //       // Step 5.
              //       onChanged: (String? newValue) {
              //         setState(() {
              //           dropdownValue = newValue!;
              //           UserType = dropdownValue;
              //         });
              //       },
              //     ),
              //   ],
              // ),
              // DropdownButton<String>(
              //   // Step 3.
              //   value: dropdownValue,
              //   // Step 4.
              //   items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
              //       .map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(
              //         value,
              //         style: TextStyle(fontSize: 30),
              //       ),
              //     );
              //   }).toList(),
              //   // Step 5.
              //   onChanged: (String? newValue) {
              //     setState(() {
              //       dropdownValue = newValue!;
              //     });
              //   },
              // ),
              // CustomTextField(controller: profileController, hintText: 'Choose Profile',
              //   prefixIcon:'assets/images/ChooseProfileIcon.svg',),
              SizedBox(
                height: height * 0.03,
              ),
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                prefixIcon: 'assets/images/EmailIcon.svg',
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                prefixIcon: 'assets/images/PasswordIcon.svg',
                obscureText: showPassword,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: ColorConstant.buttonColor,
                        value: this.agreeCondition,
                        onChanged: (value) {
                          setState(() {
                            this.agreeCondition = value!;
                          });
                        },
                      ),
                      ParagraphText(
                        text: "Terms of service",
                        color: ColorConstant.blueGreen,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        showPassword = !showPassword;
                        setState(() {});
                      },
                      child: ParagraphText(
                        text: showPassword ? "Show Password" : "Hide Password",
                        color: ColorConstant.blueGreen,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Center(
                child: CustomButton(
                  onTap: () {
                    if (_value == null) {
                      showSnackbar(context, "Choose profile");
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterOTP()));
                    }
                  },
                  text: 'Register',
                  width: width * 0.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

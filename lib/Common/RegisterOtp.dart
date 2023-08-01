import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hellolead/Admin/AdminHomeScreen.dart';
import 'package:hellolead/Agent/AgentHomeScreen.dart';
import 'package:hellolead/Constants/GlobalData.dart';
import 'package:hellolead/Customer/CustomerHomeScreen.dart';
import 'package:hellolead/Investor/InvestorHomeScreen.dart';
import 'package:hellolead/LandOwner/LandOwnerHomeScreen.dart';
import 'package:hellolead/Widgets/CustomSnackBar.dart';

import '../Constants/color_constant.dart';
import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomTexts.dart';

class RegisterOTP extends StatefulWidget {
  const RegisterOTP({super.key});

  @override
  State<RegisterOTP> createState() => _RegisterOTPState();
}

class _RegisterOTPState extends State<RegisterOTP> {
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
                  ParagraphText(text: "Enter the",fontSize: 22,fontWeight: FontWeight.w400,color: ColorConstant.greyDark,),
                  ParagraphText(text: " HelloLead",fontSize: 22,fontWeight: FontWeight.bold,color: ColorConstant.greyDark,),
                  ParagraphText(text: " code",fontSize: 22,fontWeight: FontWeight.bold,color: ColorConstant.blueGreen,),

                ],
              ),
              SizedBox(height: height*0.02,),
              ParagraphText(text: "Enter the 4 digit code that we just sent to ",color: ColorConstant.greyMedium,),
              SizedBox(height: height*0.01,),
              ParagraphText(text: "jonathan@email.com",color: ColorConstant.greyDark,fontWeight: FontWeight.bold,),
            SizedBox(height: height*0.2,),
              _otp_field(),
              SizedBox(height: height*0.25,),
              Center(
                child: Container(
                  width: width*0.2,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/ClockIcon.svg'),
                      SizedBox(width: width*0.02,),
                      ParagraphText(text: "00.21",color: ColorConstant.greyDark,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0.05,),
              Center(
                child: Container(
                  width: width*0.6,
                  child: Row(children: [
                    ParagraphText(text: 'Did not recive the code?',color: ColorConstant.greyMedium),
                    ParagraphText(text: 'Resend OTP',color: ColorConstant.blueGreen,fontWeight: FontWeight.bold,),
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _otp_field() {

    return  OtpTextField(

      decoration: InputDecoration(
        border: InputBorder.none,
        // contentPadding: EdgeInsets.symmetric(horizontal: 18),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFFFFFF),)),),
      cursorColor: Colors.grey,
      textStyle:TextStyle(
          color: Color(0xff000000),fontSize: 16,fontWeight: FontWeight.w700
      ) ,
      margin: EdgeInsets.only(right: 20),
      borderRadius: BorderRadius.circular(10),
      numberOfFields: 4,
      borderColor: ColorConstant.buttonColor,
      focusedBorderColor: ColorConstant.blueGreen,
      showFieldAsBox: true,
      borderWidth: 0.5,
      enabledBorderColor:Colors.black26,
      fieldWidth: 55,


      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here if necessary
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        print(UserType);
        if(UserType=="ADMIN"){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AdminHomeScreen()));
        }
        else if(UserType=="CUSTOMER"){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CustomerHomeScreen()));
        }
        else if(UserType=="LANDOWNER"){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LandOwnerHomeScreen()));
        }
        else if(UserType=="AGENT"){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AgentHomeScreen()));
        }
        else if(UserType=="INVESTOR"){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => InvestorHomeScreen()));
        }
        else{
          showSnackbar(context, "No UserType found");
        }
      },
    );
  }
}

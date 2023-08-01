import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hellolead/Common/WhatsYourEmail.dart';
import 'package:hellolead/Constants/color_constant.dart';

import '../Widgets/CustomTexts.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({super.key});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 150, 20, 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ParagraphText(text: 'Enter Code',color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),
              SizedBox(
                height: height * 0.1,
              ),
              _otp_field(),
              SizedBox(
                height: height * 0.1,
              ),
              Container(
                width: width*0.6,
                child: Row(children: [
                  ParagraphText(text: 'Did not recive the code?',color: Colors.black,fontWeight: FontWeight.w500),
                  ParagraphText(text: 'RESEND'),
                ],),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              ParagraphText(text: 'GET A CALL NOW',color: Colors.black,fontWeight: FontWeight.bold,),
            ],
          ),
        ),
      ),
    );
  }
  Widget _otp_field() {

    return  OtpTextField(

      decoration: InputDecoration(border: InputBorder.none,
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
      focusedBorderColor: ColorConstant.buttonColor,
      showFieldAsBox: true,
      borderWidth: 0.5,
      enabledBorderColor: Colors.black26,
      fieldWidth: 55,


      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here if necessary
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WhatsYourEmail()));
      },
    );
  }
}

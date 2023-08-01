import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hellolead/Common/FAQSupport.dart';
import 'package:hellolead/Common/RegisterScreen.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/CustomTexts.dart';

class WhatsYourEmail extends StatefulWidget {
  const WhatsYourEmail({super.key});

  @override
  State<WhatsYourEmail> createState() => _WhatsYourEmailState();
}

class _WhatsYourEmailState extends State<WhatsYourEmail> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarHeadingText(
                text: "What's your email?",
              ),
              SizedBox(height: height*0.02,),
              ParagraphText(text: "Don't lose access to your account, verify your email"),
              SizedBox(
                height: height * 0.1,
              ),
              CustomTextField(controller: emailController, hintText: 'Email',
              prefixIcon:'assets/images/EmailIcon.svg',),
              SizedBox(
                height: height * 0.1,
              ),
              CustomButton(onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQSupport()));
              }, text: 'CONTINUE',width: width,),
              SizedBox(
                height: height * 0.05,
              ),
              Center(child: ParagraphText(text: "Or",fontSize:16,fontWeight: FontWeight.bold,)),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Container(width: width*0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/GoogleLogo.png'),
                      ParagraphText(text: "Google",color: Colors.black,fontWeight:FontWeight.bold,fontSize: 15,),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(child: ParagraphText(text: "Verify instantly by connecting your Google account")),
              SizedBox(
                height: height * 0.05,
              ),
              InkWell(
                  onTap: (){},
                  child: SvgPicture.asset('assets/images/FacebookButton.svg')),
            ],
          ),

        ),
      ),
    );
  }
}

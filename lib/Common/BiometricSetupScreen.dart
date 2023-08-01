import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hellolead/Common/LoginScreen.dart';
import 'package:hellolead/Widgets/CustomButton.dart';
import 'package:hellolead/Widgets/CustomTexts.dart';

class BiometricSetupScreen extends StatefulWidget {
  const BiometricSetupScreen({super.key});

  @override
  State<BiometricSetupScreen> createState() => _BiometricSetupScreenState();
}

class _BiometricSetupScreenState extends State<BiometricSetupScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100,horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarHeadingText(text: 'Biometric setup',),
            SizedBox(height: height*0.02,),
            ParagraphText(text: 'Add fingerprint od face unlock to access your account easily',fontSize: 16,),
            SizedBox(height: height*0.1,),
            Center(child: SvgPicture.asset('assets/images/BiometricImage.svg')),
            SizedBox(height: height*0.05,),
            Center(child: Container(
                width:width*0.8,child: ParagraphText(text: 'Get ready for setup face unlock, make sure nothing is blocing the sensor or face',fontSize: 16,))),
            SizedBox(height: height*0.15,),
            Center(child: CustomButton(onTap:(){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }, text: 'Next',width: width* 0.7,))


          ],
        ),
      ),
    );
  }
}

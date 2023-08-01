import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellolead/Common/BiometricSetupScreen.dart';
import 'package:hellolead/Widgets/CustomAppBar.dart';

import '../Widgets/CustomTexts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
   body: Align(
     alignment: Alignment.center,
     child: Column(
       children:
       [
         SizedBox(height: height*0.10,),
         Padding(
         padding: const EdgeInsets.symmetric(horizontal: 50 ,vertical: 100),
         child: Image.asset('assets/images/logoAnimation.gif'),
       ),
         ParagraphText(text: 'Language',fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18,),
         SizedBox(height: height*0.03,),
         Container(
           width: width*0.2,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 children: [
                   Image.asset('assets/images/FlagEn.png'),
                   SizedBox(height: height*0.01,),
                   ParagraphText(text: "EN",color: Colors.black,fontWeight:FontWeight.bold,fontSize: 10,),
                 ],
               ),
               Column(
                 children: [
                   Image.asset('assets/images/FlagFr.png'),
                   SizedBox(height: height*0.01,),
                   ParagraphText(text: "FR",color: Colors.black,fontWeight:FontWeight.bold,fontSize: 10,),
                 ],
               ),

             ],
           ),
         ),
         SizedBox(height: height*0.05,),
         InkWell(
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => BiometricSetupScreen()));
             },
             child: SvgPicture.asset('assets/images/FacebookButton.svg')),
         SizedBox(height: height*0.05,),
         Container(width: width*0.3,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SvgPicture.asset('assets/images/BiometricIcon.svg'),
             ParagraphText(text: "Biometric Setup",color: Colors.black,fontWeight:FontWeight.bold,fontSize: 13,),
           ],
         ),
         ),
         SizedBox(height: height*0.05,),
         Container(width: width*0.2,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Image.asset('assets/images/GoogleLogo.png'),
               ParagraphText(text: "Google",color: Colors.black,fontWeight:FontWeight.bold,fontSize: 13,),
             ],
           ),
         ),
         SizedBox(height: height*0.1,),
         Container(width: width*0.52,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               SvgPicture.asset('assets/images/PhoneLogo.svg'),
               ParagraphText(text: "LOGIN WITH PHONE NUMBER",color: Colors.black,fontWeight:FontWeight.bold,fontSize: 13,),
             ],
           ),
         )


       ],
     ),
   ),
    );
  }
}

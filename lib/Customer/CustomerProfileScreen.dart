import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hellolead/Common/AboutScreen.dart';
import 'package:hellolead/Common/FAQScreen.dart';
import 'package:hellolead/Common/SettingScreen.dart';
import 'package:hellolead/Common/TermsConditions.dart';
import 'package:hellolead/Widgets/CustomTexts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../Common/GetSupport.dart';
import '../Common/PrivacyNoticeScreen.dart';
import '../Constants/color_constant.dart';

class CustomerProfileScreen extends StatefulWidget {
  const CustomerProfileScreen({super.key});

  @override
  State<CustomerProfileScreen> createState() => _CustomerProfileScreenState();
}

class _CustomerProfileScreenState extends State<CustomerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.chevron_left_outlined,
                color: ColorConstant.greyDark,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Image.asset(
              "assets/images/LogoImage.png",
              height: 23,
              width: 123,
            ),
            centerTitle: true,
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingScreen()));
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: SvgPicture.asset(
                    "assets/images/SettingIcon.svg",
                    height: 23,
                    width: 23,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Stack(children: [
                  CircularStepProgressIndicator(
                    totalSteps: 100,
                    currentStep: 72,
                    selectedColor: Colors.grey,
                    unselectedColor: Color(0xffD80E7A),
                    padding: 0,
                    width: 150,
                    height: 150,
                  ),
                  Positioned(
                    left: 20,
                    top: 21,
                    child: Image.asset(
                      "assets/images/ProfileImage.png",
                      height: 110,
                      width: 110,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 110, right: 8.0, top: 5),
                        child: Image.asset(
                          "assets/images/CameraImage.png",
                          height: 35,
                          width: 35,
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 9,
                      child: Container(
                          height: 30,
                          width: 135,
                          decoration: BoxDecoration(
                              color: Color(0xffD80E7A),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text(
                            '10% Complete',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          )))),
                ]),
              ),
              SizedBox(height: height*0.01,),
              Center(
                  child: Text(
                "Forex, 20",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              )),
              SizedBox(height: height*0.01,),
              Container(
                width: width * 0.3,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF1F1F1)),
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/ChatIconboxColored.svg"),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    SubHeadingText(
                      text: "Investor",
                      color: ColorConstant.buttonColor,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConstant.buttonColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/StarLogo.svg'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Super Likes",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "GET MORE",
                          style: TextStyle(
                              color: Color(0xff6074DA),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/HeartFilled.svg',
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "My Likes",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "GET MORE",
                          style: TextStyle(
                              color: Color(0xff6074DA),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/LogoImage.png',
                          height: 30,
                          width: 100,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Subscription",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xff000000)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ListTile(
                leading: SvgPicture.asset("assets/images/iButtonIcon.svg"),
                title: SubHeadingText(
                  text: 'Favorite Property ',
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => GetSupport()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/images/GetSupportIcon.svg"),
                title: SubHeadingText(
                  text: 'Get Support',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GetSupport()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/images/iButtonIcon.svg"),
                title: SubHeadingText(
                  text: 'About Hello Lead',
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutHelloLead()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/images/FAQIcon.svg"),
                title: SubHeadingText(
                  text: 'FAQ',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FAQScreen()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/images/TCIcon.svg"),
                title: SubHeadingText(
                  text: 'Terms and Conditions',
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TermsConditions()));
                },
              ),
              ListTile(
                leading:
                    SvgPicture.asset("assets/images/PrivacyNoticeIcon.svg"),
                title: SubHeadingText(
                  text: 'Privacy Notice',
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyNoticeScreen()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/images/LogoutIcon.svg"),
                title: SubHeadingText(
                  text: 'Logout',
                ),
                onTap: () {
                  _showDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Log Out", style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text("Are you sure you want to Log out?"),
          actions: <Widget>[
            TextButton(
              child: new Text("No",
                  style: TextStyle(
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Yes",
                  style: TextStyle(
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

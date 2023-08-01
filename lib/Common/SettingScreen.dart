import 'package:flutter/material.dart';

import '../Constants/color_constant.dart';
import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomTexts.dart';
import 'ChangePassword.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isNotification = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context: context, title: "Setting"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: SubHeadingText(
                text: "Allow Notifcations",
                fontWeight: FontWeight.bold,
              ),
              trailing: InkWell(
                onTap: () {
                  // setState(() {
                  //   isNotification = !isNotification;
                  // });
                },
                child: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: ColorConstant.buttonColor,
                  inactiveTrackColor:
                  ColorConstant.buttonColor.withOpacity(0.4),
                  value: isNotification,
                  onChanged: (newValue) {
                    setState(() {
                      isNotification = newValue;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            ListTile(
              onTap: () {
               // showSheet();
              },
              title: SubHeadingText(
                text: "Language",
                fontWeight: FontWeight.bold,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorConstant.buttonColor,
                size: 20,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            ListTile(
              title: SubHeadingText(
                text: "Change password",
                fontWeight: FontWeight.bold,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorConstant.buttonColor,
                size: 20,
              ),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ChangePassword()));
              },
            ),
            SizedBox(
              height: height * 0.01,
            ),
            ListTile(
              title: SubHeadingText(
                text: "Rate us",
                fontWeight: FontWeight.bold,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorConstant.buttonColor,
                size: 20,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            ListTile(
              title: SubHeadingText(
                text: "Share this app",
                fontWeight: FontWeight.bold,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorConstant.buttonColor,
                size: 20,
              ),
              onTap: () {
                //share();
              },
            ),
          ],
        ),
      ),
    );
  }
}

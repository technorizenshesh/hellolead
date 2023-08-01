import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hellolead/Common/RegisterOtp.dart';

import '../Constants/color_constant.dart';
import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/CustomTexts.dart';
import 'RegisterScreen.dart';

class FAQSupport extends StatefulWidget {
  const FAQSupport({super.key});

  @override
  State<FAQSupport> createState() => _FAQSupportState();
}

class _FAQSupportState extends State<FAQSupport> {
  TextEditingController searchController = TextEditingController();
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ParagraphText(
                    text: "FAQ",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.blueGreen,
                  ),
                  ParagraphText(
                    text: " &",
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.greyDark,
                  ),
                  ParagraphText(
                    text: " Support",
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
                text: "Find answer to your problem using this app.",
                color: ColorConstant.greyMedium,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/images/WebsiteIcon.svg',
                  height: 35,
                ),
                minLeadingWidth: 5,
                title: ParagraphText(
                  text: "Visit our website",
                  fontSize: 16,
                  color: ColorConstant.greyDark,
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
              ),
              Divider(
                color: ColorConstant.greySoft,
                thickness: 1, // Adjust the thickness as needed
                // Adjust the endIndent (right padding) as needed
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/images/EmailUsIcon.svg',
                  height: 35,
                ),
                minLeadingWidth: 5,
                title: ParagraphText(
                  text: "Email Us",
                  fontSize: 16,
                  color: ColorConstant.greyDark,
                ),
              ),
              Divider(
                color: ColorConstant.greySoft,
                thickness: 1, // Adjust the thickness as needed
                // Adjust the endIndent (right padding) as needed
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/images/TermsIcon.svg',
                  height: 35,
                ),
                minLeadingWidth: 5,
                title: ParagraphText(
                  text: "Terms of Service",
                  fontSize: 16,
                  color: ColorConstant.greyDark,
                ),
              ),
              Divider(
                color: ColorConstant.greySoft,
                thickness: 1, // Adjust the thickness as needed
                // Adjust the endIndent (right padding) as needed
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                controller: searchController,
                hintText: 'Try find “how to”',
                textcolor: ColorConstant.greyBarelyMedium,
                prefixIcon: 'assets/images/SearchIcon.svg',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(
                      text: "Buyer",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: ColorConstant.greyDark,
                    ),
                    ParagraphText(
                      text: "Broker",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: ColorConstant.greyBarelyMedium,
                    ),
                    ParagraphText(
                      text: "Investor",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: ColorConstant.greyBarelyMedium,
                    ),
                    ParagraphText(
                      text: "Landowner",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: ColorConstant.greyBarelyMedium,
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                initiallyExpanded: false,
                collapsedTextColor: Colors.black,
                textColor: Colors.black,
                iconColor: ColorConstant.addColor,
                collapsedIconColor: ColorConstant.addColor,
                trailing: Icon(
                  !isExpanded ? Icons.add : Icons.remove,
                  color: ColorConstant.addColor,
                ),
                onExpansionChanged: (bool val) {
                  isExpanded = val;
                  setState(() {});
                },
                title:
                ParagraphText(
                  text: "What is Rise Real Estate?",
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: ColorConstant.greyDark,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    ParagraphText(
                      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                      color: ColorConstant.greyMedium,
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                initiallyExpanded: false,
                collapsedTextColor: Colors.black,
                textColor: Colors.black,
                iconColor: ColorConstant.addColor,
                collapsedIconColor: ColorConstant.addColor,
                trailing: Icon(
                  !isExpanded ? Icons.add : Icons.remove,
                  color: ColorConstant.addColor,
                ),
                onExpansionChanged: (bool val) {
                  isExpanded = val;
                  setState(() {});
                },
                title:
                ParagraphText(
                  text: "Why choose buy in Rise?",
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: ColorConstant.greyDark,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    ParagraphText(
                      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                      color: ColorConstant.greyMedium,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

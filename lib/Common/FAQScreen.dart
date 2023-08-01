import 'package:flutter/material.dart';

import '../Constants/color_constant.dart';
import '../Widgets/CustomAppBar.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  List faqQ = [
    "What is the real estate matchmaking application?",
    "How does the application work?",
    "Is the application free?Copy",
    "What information do I need to provide to create my profile?",
    "Are my personal information secure?",
    "How can I find interesting matches?"];
  List faqA = [
    "What is the real estate matchmaking application?",
    "What is the real estate matchmaking application?",
    "What is the real estate matchmaking application?",
    "What is the real estate matchmaking application?",
    "What is the real estate matchmaking application?",
    "What is the real estate matchmaking application?"
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: appBar(context: context, title: "FAQ"),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          children: [
            Center(
                child: Image.asset(
                  "assets/images/FAQImg.png",
                  height: height * 0.15,
                )),
            SizedBox(height: height*0.03,),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      for (int i = 0; i < faqQ.length; i++)
                        Column(
                          children: [
                            ExpansionTile(
                              initiallyExpanded: false,
                              collapsedTextColor: Colors.black,
                              textColor: Colors.black,
                              iconColor: ColorConstant.buttonColor,
                              collapsedIconColor: ColorConstant.buttonColor,
                              title: Text(
                                faqQ[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    faqA[i],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height*0.02,)
                          ],
                        )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

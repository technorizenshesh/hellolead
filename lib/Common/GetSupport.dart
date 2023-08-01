import 'package:flutter/material.dart';
import 'package:hellolead/Common/FAQScreen.dart';

import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomTexts.dart';

class GetSupport extends StatefulWidget {
  const GetSupport({super.key});

  @override
  State<GetSupport> createState() => _GetSupportState();
}

class _GetSupportState extends State<GetSupport> {

  // _launchEmail() async {
  //   launch(
  //       "mailto:info@goldvault.sk");
  // }
  // _launchMobile() async {
  //   launch(
  //       "tel:+421 940 935 404");
//  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context: context,title: "Get Support"),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20,20,25,20),
        child: Column(
          children: [
            ListTile(leading: Image.asset('assets/images/FAQImage.png'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FAQScreen()));
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubHeadingText(
                    text: 'Read our FAQ',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ParagraphText(
                    text: 'Looking for more information? Check out our FAQs!',fontSize: 16,
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.05,),
            ListTile(leading: Image.asset('assets/images/WhatsappImage.png'),
              onTap: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ChatDetailScreen()));
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubHeadingText(
                    text: 'Whatsapp Chat with us',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ParagraphText(
                    text: 'Got questions or suggestions? Come say hello!',fontSize: 16,
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.05,),
            ListTile(leading: Image.asset('assets/images/GmailImage.png'),
              onTap: () {
               // _launchEmail();
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubHeadingText(
                    text: 'Email us',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ParagraphText(
                    text: "hello@hellolead.com We'll reply shortly",fontSize: 16,
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.05,),
            ListTile(leading: Image.asset('assets/images/CallImage.png'),
              onTap: () {
                //_launchMobile();
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubHeadingText(
                    text: 'Call us',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ParagraphText(
                    text: "Monday - Friday, 9am - 6pm (excluding public holidays)",fontSize: 16,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

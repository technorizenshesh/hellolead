import 'package:flutter/material.dart';

import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomTexts.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, title: "Terms and Conditions"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: ParagraphText(
            text:
            "Welcome to the real estate matchmaking application, hereinafter referred to as the. Before using it, please carefully read these Terms and Conditions that govern your use of the application.  Acceptance of the T&C By downloading, installing, or using the application, you fully and unconditionally accept these T&C. If you do not agree to these conditions, please do not use the application.  Use of the application The application is designed to facilitate connections between users in the real estate sector. It allows users to create profiles, view real estate listings, chat, and schedule meetings.  You agree to use the application lawfully, in compliance with applicable laws and regulations. You commit not to use the application to disseminate inappropriate, illegal, fraudulent, defamatory, offensive, or rights-infringing content.  Profile and personal information Upon registration in the application, you must provide accurate and complete personal information. You agree to keep this information up to date and not to impersonate another person's identity.  Intellectual property All intellectual property rights related to the application (including texts, graphics, logos, images, etc.) are the exclusive property of the application or its partners. You undertake not to reproduce, distribute, modify, or exploit the content of the application in any way without prior authorization.  Confidentiality The confidentiality of your personal information is important to us. We collect, use, and store your data in accordance with our privacy policy. We are committed to protecting your information, but we cannot guarantee absolute security.  Responsibilities The use of the application is at your own risk. We disclaim any liability for direct or indirect damages resulting from the use of the application, including data loss, errors, service interruptions, or physical damage.  Changes to the T&C We reserve the right to modify these T&C at any time. The modifications will take effect upon their publication in the application. It is your responsibility to regularly review the T&C to stay informed of updates.  Termination We reserve the right to terminate your access to the application at any time for a violation of the T&C or for any other reason deemed appropriate.  Applicable law and jurisdiction These T&C are governed by the laws in force in [country]. Any dispute related to the application will be subject to the exclusive jurisdiction of the competent courts of [city/country].  By using the application, you agree to comply with these Terms and Conditions. If you have any questions or concerns, please contact us at the provided address in the application.",
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}

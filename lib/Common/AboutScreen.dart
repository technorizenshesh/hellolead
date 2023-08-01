import 'package:flutter/material.dart';

import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomTexts.dart';

class AboutHelloLead extends StatefulWidget {
  const AboutHelloLead({super.key});

  @override
  State<AboutHelloLead> createState() => _AboutHelloLeadState();
}

class _AboutHelloLeadState extends State<AboutHelloLead> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBar(context: context, title: "About Hello Lead"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
          Column(
            children: [
              Container(
                  width: width,
                  height: height*0.25,
                  child: Image.asset(
                    "assets/images/AboutLeadImg.png",
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: height * 0.03,
              ),
              ParagraphText(
                height: 1.5,
                text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi integer quam cras auctor ut lectus tortor ut. Nunc, tortor eget viverra tristique faucibus. Faucibus hac sapien, et egestas ultrices. Praesent diam sit amet, facilisi luctus. Bibendum ullamcorper id proin at sed volutpat. Lectus sed congue pulvinar nulla. Est morbi quisque tellus, cursus. Non magnis faucibus ut sit ultrices a tristique. Faucibus lorem diam, morbi blandit sodales in. Neque, tellus sem suspendisse mi duis amet velit vivamus sit. Lacinia elementum enim, ultrices sed.Etiam tellus faucibus facilisi iaculis proin et porttitor adipiscing mattis. Scelerisque eu suspendisse dictumst semper ipsum. Mattis pharetra ut sagittis, tellus volutpat aliquam tellus tellus sapien. Quisque consequat id elit ultricies vitae amet. Dictum condimentum dolor a consequat. Vel adipiscing aliquam morbi tempor, blandit amet vestibulum.Integer laoreet adipiscing nisi in amet eget a interdum urna. Aliquam eget nec ultrices quis suspendisse arcu ut nunc. Elementum pellentesque pharetra suspendisse orci nulla ipsum neque, velit. Porttitor sit urna congue nulla in mollis felis blandit. Posuere sit massa in odio etiam mattis habitasse. Tempor id lacus, dictumst tortor luctus maecenas nulla. Vel sagittis, eu dictum in ullamcorper ultrices orci, vitae.Amet viverra et magna cras non gravida adipiscing. In egestas aliquet scelerisque velit arcu vulputate.",
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}

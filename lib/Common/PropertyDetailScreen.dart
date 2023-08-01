import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widgets/CustomTexts.dart';

class PropertyDetailScreen extends StatefulWidget {
  const PropertyDetailScreen({super.key});

  @override
  State<PropertyDetailScreen> createState() => _PropertyDetailScreenState();
}

class _PropertyDetailScreenState extends State<PropertyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leadingWidth: 0,
            title: Image.asset(
              "assets/images/LogoImage.png",
              height: 23,
              width: 123,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Notification.svg",
                      height: 23,
                      width: 23,
                    ),
                    //SizedBox(width: 0.02,),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: SvgPicture.asset(
                        "assets/images/FilterIcon1.svg",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.3,
                  child: Image.asset(
                    "assets/images/PropertyImage.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Padding(
                          padding:EdgeInsets.all(20),child: SvgPicture.asset("assets/images/DownloadIcon.svg")),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Zoning",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text:
                        '"D4 Derogation 11 pavilions for rent! Restaurant / 1 Spa / 1 Fitness Center"',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("TF",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text:
                        '"D4 Derogation 11 pavilions for rent! Restaurant / 1 Spa / 1 Fitness Center"',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Surface",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: '2198 m2',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Address",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: 'Anfa, Near Skybar',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Price",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: '40 MDH~18 200 dhs/m2',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Urban Assignment",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: 'Residential/Commercial/Restaurant',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Maximum Height",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: 'R+1',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("cos",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: 'COS: NoneSurface to be built: 2800 m2',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("cus",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: 'COS: NoneSurface to be built: 2800 m2',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 240,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Estimated Rental Income Height",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                    text: '500 KMAD/month',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF74682),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Link",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ParagraphText(
                      text:
                          'Hello Lead – Votre partenaire Lead génération B2B'),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/StarCircleGrey.svg",
                        height: 50,
                        width: 50,
                      ),
                      SvgPicture.asset(
                        "assets/images/CircularRight.svg",
                        height: 50,
                        width: 50,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          "assets/images/CircularCross.svg",
                          height: 50,
                          width: 50,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

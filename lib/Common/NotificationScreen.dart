import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today",style: TextStyle(color: Color(0xff252B5C),fontWeight: FontWeight.w700,fontSize: 18),),
            SizedBox(height: height*.02,),
            for(int i = 0; i<3; i++)
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5F4F8),borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0,left: 10,right: 5,bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Align(
                              alignment:Alignment.topLeft,
                              child: Image.asset("assets/images/ProfileImageDummy.png",height: 50,width: 50,)),
                        ],
                      ),
                      SizedBox(width: width*.01,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Emmett Perry",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff252B5C)),),
                          SizedBox(height: height*.02,),
                          Text("Just messaged you. Check the message\nin message tab.",),
                          SizedBox(height: height*.02,),
                          Text("10 mins ago"),
                        ],)
                    ],
                  ),
                ),),
            SizedBox(height: height*.02,),
            Text("Older notifications",style: TextStyle(color: Color(0xff252B5C),fontWeight: FontWeight.w700,fontSize: 18),),
            SizedBox(height: height*.02,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF5F4F8),borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0,left: 10,right: 5,bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Align(
                            alignment:Alignment.topLeft,
                            child: Image.asset("assets/images/ProfileImageDummy.png",height: 50,width: 50,)),
                      ],
                    ),
                    SizedBox(width: width*.01,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Velma Cole",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff252B5C)),),
                        SizedBox(height: height*.02,),
                        Text("Just favorited your listing\nSchoolview House",),
                        SizedBox(height: height*.02,),
                        Text("2 days ago"),
                      ],),
                    SizedBox(width: width*.07,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment:Alignment.topRight,
                            child: Image.asset("assets/images/NotificationdummyImg1.png",height: 70,width: 65,)),
                      ],)
                  ],
                ),
              ),),
            SizedBox(height: height*.02,),
          ],
        ),
      ),
    );
  }
}

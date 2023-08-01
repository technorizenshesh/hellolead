import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandOwnerHomeTab extends StatefulWidget {
  const LandOwnerHomeTab({super.key});

  @override
  State<LandOwnerHomeTab> createState() => _LandOwnerHomeTabState();
}

class _LandOwnerHomeTabState extends State<LandOwnerHomeTab> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0,
          leadingWidth: 0,
          backgroundColor: Colors.white,
          title: Image.asset("assets/images/LogoImage.png",height: 23,width: 123,),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: SvgPicture.asset("assets/images/Notification.svg",height: 28,width: 28,),
                ),
              ],),
            )
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for(int i = 1;i <5; i++)
              Container(
                height: height*0.16,
                decoration: BoxDecoration(
                  color: Color(0xffF5F4F8),borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:7.0,left: 5),
                      child: Container(
                        height:100, width: 100,
                        // height: height*0.25 ,width: width*0.45,
                        child:Image.asset("assets/images/NotificationdummyImg1.png",fit: BoxFit.fill,) ,
                      ),
                    ),
                    SizedBox(width: width*0.03,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height*0.01,),
                        Text("Sky Dandelions\nApartment",
                          style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w700,fontSize: 13 ),
                        ),
                        SizedBox(height: height*0.01),
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/LocationMarker.svg"),
                            Text("Jakarta, Indonesia", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w400,fontSize: 8 ),),
                          ],
                        ),
                        SizedBox(height: height*0.01),
                        Text("\$ 290/month", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w600,fontSize: 12 ),),
                        SizedBox(height: height*0.01),
                        Text("2598/Square feet", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w700,fontSize: 14 ),),

                      ],
                    ),SizedBox(width: width*0.08,),
                    Column(
                      children: [
                        SizedBox(height: height*0.1,),
                        Container(
                          height:height*0.04,width: width*0.13,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff234F68),),

                          child: Center(child: Text('Visit',style: TextStyle(color: Colors.white),)),

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

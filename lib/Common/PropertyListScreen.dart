import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PropertyListScreen extends StatefulWidget {
  const PropertyListScreen({super.key});

  @override
  State<PropertyListScreen> createState() => _PropertyListScreenState();
}

class _PropertyListScreenState extends State<PropertyListScreen> {
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
          title: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("Buildings",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color:Color(0xff252B5C)),),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: SvgPicture.asset("assets/images/FilterIcon.svg",height: 50,width: 28,),
            )
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(

            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(int i =0; i<5;i++)
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F4F8),borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0,bottom: 5),
                                child: Container(
                                  height:150, width: 200,
                                  // height: height*0.25 ,width: width*0.45,
                                  child:Image.asset("assets/images/PropertyListImage.png") ,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0,top: 10),
                                child: Positioned(
                                  top:16,
                                  child: SvgPicture.asset("assets/images/HeartCircular.svg"),
                                ),
                              ),
                              Positioned(
                                bottom: 12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 34.0),
                                  child: Container(
                                    decoration: BoxDecoration(color: Color(0xff234F68),borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Apartment",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 8,fontWeight: FontWeight.w500),),
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height*0.02,),
                            Text("Sky Dandelions\nApartment",
                              style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w700,fontSize: 15 ),
                            ),
                            SizedBox(height: height*0.01),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/rating.svg"),
                                Text("4.9", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w400,fontSize: 10 ),),
                              ],
                            ),
                            SizedBox(height: height*0.01),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/LocationMarker.svg"),
                                Text("Jakarta, Indonesia", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w400,fontSize: 10 ),),
                              ],
                            ),
                            SizedBox(height: height*0.01),
                            Text("\$ 290/month", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w600,fontSize: 14 ),),
                            SizedBox(height: height*0.01),
                            Text("2598/Square feet", style: TextStyle(color:Color(0xff252B5C),fontWeight: FontWeight.w700,fontSize: 16 ),),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.02,)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

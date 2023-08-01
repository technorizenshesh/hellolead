import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double _lowerValue = 50;//50
  double _upperValue =180;//180
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
            Container(
                width: width,
                height: height*0.4,
                child: Image.asset("assets/images/MapImage.png",fit: BoxFit.fill,)),
            SizedBox(height: height*0.03,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("land size",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                  /// Range  slider
                  Container(
                    //margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                      alignment: Alignment.centerLeft,
                      child: FlutterSlider(
                        values: [0, 15000],
                        rangeSlider: true,

//rtl: true,
                        ignoreSteps: [
                          FlutterSliderIgnoreSteps(from: 0, to: 12000),
                          //FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                        ],
                        max: 25000,
                        min: 0,
                        step: FlutterSliderStep(step: 100),

                        jump: true,

                        trackBar: FlutterSliderTrackBar(
                          activeTrackBarHeight: 5,
                          activeTrackBar: BoxDecoration(color:Color(0xffD80E7A)),
                        ),
                        // tooltip: FlutterSliderTooltip(
                        //   textStyle: TextStyle(fontSize: 17, color: Colors.yellow),
                        // ),


                        handler: FlutterSliderHandler(
                          //disabled: false,
                          decoration: BoxDecoration(),
                          child: Container(
                            height: 25,width: 25,
                            decoration: BoxDecoration(
                                color:Color(0xffD80E7A),
                                borderRadius: BorderRadius.circular(5)),
                            //padding: EdgeInsets.all(10),
                            // child: Container(
                            //   padding: EdgeInsets.all(5),
                            //   decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       borderRadius: BorderRadius.circular(25)),
                            // ),
                          ),
                        ),


                        rightHandler: FlutterSliderHandler(
                          decoration: BoxDecoration(),
                          child: Container(
                            height: 22,width: 22,
                            decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(22)),
                            padding: EdgeInsets.all(10),
                            // child: Container(
                            //   height: 19,width: 19,
                            //   padding: EdgeInsets.all(5),
                            //   decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       borderRadius: BorderRadius.circular(5)),
                            // ),
                          ),
                        ),
                        disabled: false,

                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          _lowerValue = lowerValue;
                          _upperValue = upperValue;
                          setState(() {});
                        },
                      )),

                  SizedBox(height: height*0.03,),
                  Text("price Range",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                  /// Range  slider
                  Container(
                    // margin: EdgeInsets.only(top: 15, left: 15, right: 10),
                      alignment: Alignment.centerLeft,
                      child: FlutterSlider(
                        values: [0, 15000],
                        rangeSlider: true,
                        ignoreSteps: [
                          // FlutterSliderIgnoreSteps(from: 0, to: 12000),
                          // FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                        ],
                        max: 25000,
                        min: 0,
                        step: FlutterSliderStep(step: 100),

                        jump: true,

                        trackBar: FlutterSliderTrackBar(
                          activeTrackBarHeight: 5,
                          activeTrackBar: BoxDecoration(color:Color(0xffD80E7A)),
                        ),
                        tooltip: FlutterSliderTooltip(
                          textStyle: TextStyle(fontSize: 17, color: Colors.transparent),
                        ),
                        handler: FlutterSliderHandler(
                          //disabled: false,
                          decoration: BoxDecoration(),
                          child: Container(
                            height: 25,width: 25,
                            decoration: BoxDecoration(
                                color:Color(0xffD80E7A),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),


                        rightHandler: FlutterSliderHandler(
                          decoration: BoxDecoration(),
                          child: Container(
                            height: 22,width: 22,
                            decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(22)),
                          ),
                        ),
                        disabled: false,

                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          _lowerValue = lowerValue;
                          _upperValue = upperValue;
                          setState(() {});
                        },
                      )),


                  SizedBox(height: height*0.03,),

                  Text("Type",style: TextStyle(color: Color(0xff33196B),fontWeight: FontWeight.w600,fontSize: 16),),
                  SizedBox(height: height*0.03,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: height*0.06,width: width*0.25,
                        decoration: BoxDecoration(color: Color(0xffD80E7A),borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("building", style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w600,fontSize: 10),)),
                      ),
                      Container(
                        height: height*0.06,width: width*0.25,
                        decoration: BoxDecoration(color: Color(0xffffffff),borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("house", style: TextStyle(color: Color(0xff252B5C),fontWeight: FontWeight.w600,fontSize: 10),)),
                      ),
                      Container(
                        height: height*0.06,width: width*0.25,
                        decoration: BoxDecoration(color: Color(0xffffffff),borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("hotel", style: TextStyle(color: Color(0xff252B5C),fontWeight: FontWeight.w600,fontSize: 10),)),
                      ),
                    ],),
                  SizedBox(height: height*0.02,),
                  Container(
                    height: height*0.06,width: width*0.25,
                    decoration: BoxDecoration(color: Color(0xffffffff),borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text("Industrial", style: TextStyle(color: Color(0xff252B5C),fontWeight: FontWeight.w600,fontSize: 10),)),
                  ),
                  SizedBox(height: height*0.05,),
                  Container(
                    height: height*0.06,
                    width: width*0.85,
                    decoration: BoxDecoration(color: Color(0xffD80E7A),borderRadius: BorderRadius.circular(30)),
                    child: Center(child: Text("Done",
                      style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w700,fontSize: 16),)),
                    //  color: Colors.amber,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

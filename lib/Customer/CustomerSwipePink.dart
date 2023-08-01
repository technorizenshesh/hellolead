import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hellolead/Constants/color_constant.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../Common/FilterScreen.dart';
import '../Common/NotificationScreen.dart';
import '../Common/PropertyDetailScreen.dart';
import '../Widgets/alertFunction.dart';

class CustomerSwipePink extends StatefulWidget {
  const CustomerSwipePink({super.key});

  @override
  State<CustomerSwipePink> createState() => _CustomerSwipePinkState();
}

class _CustomerSwipePinkState extends State<CustomerSwipePink> {


  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  List<String> names = [
    'Andrews',
    'Master G',
    'Cristine',
    'Grammys',
    'Alex GH'
  ];

  List images = [
    'assets/images/image1.png',
    'assets/images/image1.png',
    'assets/images/image1.png',
    'assets/images/image1.png',

  ];

  @override
  void initState() {
    for (int i = 0; i < names.length-1; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(text: names[i]),
          likeAction: () {
            actions(context, names[i], 'Liked');
          },
          nopeAction: () {
            actions(context, names[i], 'Rejected');
          },
          superlikeAction: () {
            actions(context, names[i], 'SuperLiked');
          }));
    }
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: ColorConstant.buttonColor,
            leadingWidth: 0,
            title: Image.asset("assets/images/LogoTransparent.png",height: 23,width: 123,),
            actions: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NotificationScreen()));
                      },
                      child: SvgPicture.asset("assets/images/NotificationWhite.svg",height: 23,width: 23,)),
                  //SizedBox(width: 0.02,),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FilterScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: SvgPicture.asset("assets/images/FilterIconWhite.svg",height: 20,width: 20,),
                    ),
                  ),
                ],),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child:  Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: SwipeCards(
                      matchEngine: _matchEngine!,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index],),
                                  fit: BoxFit.cover),
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(20),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height*0.42,),
                              Text(names[index],
                                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16, color: Color(0xffffffff)
                                  // color: Colors.yellow
                                ),),
                              SizedBox(height: height*0.02,),
                              Row(
                                children: [
                                  Container(
                                    child: Text("Lorem ipsum dolor sit amet consectetur.\nNam nec tincidunt neque duis volutpat est.\nErat viverra feugiat ut dignissim ultricies.",
                                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,
                                            color: Color(0xffffffff)
                                          //color: Colors.yellow
                                        )),
                                  ),
                                  SizedBox(width: width*0.06,),
                                  InkWell(
                                    onTap:(){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => PropertyDetailScreen()));

                                    },
                                    child: Container(
                                      child: Center(child: SvgPicture.asset("assets/images/UploadIcon.svg",height: 25,width: 25,)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: height*0.05,),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/images/dislikeIcon.svg",height: 50,width: 50,),
                                    SvgPicture.asset("assets/images/StarCircle.svg",height: 50,width: 50,),
                                    SvgPicture.asset("assets/images/LikeIcon.svg",height: 50,width: 50,)
                                  ],
                                ),
                              )
                            ],
                          ),
                          // Column(
                          //   mainAxisSize: MainAxisSize.min,
                          //   children: [
                          //     Text(
                          //       names[index],
                          //       style: TextStyle(
                          //           fontSize: 32,
                          //           color: Colors.white,
                          //           fontWeight: FontWeight.bold),
                          //     )
                          //   ],
                          // ),
                        );
                      },
                      onStackFinished: () {
                        return ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Center(child: Text('The List is over'))));
                      },
                    ),
                  ),
                  // Container(child: Image.asset("assets/images/bg.png",height: height*0.75,width: width*1,)),
                  // Positioned(
                  //   bottom: 0,
                  //     child: Container(
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(30.0),
                  //         child:
                  //         // Column(
                  //         //   mainAxisAlignment: MainAxisAlignment.start,
                  //         //   crossAxisAlignment: CrossAxisAlignment.start,
                  //         //   children: [
                  //         //     Text("luxury House",
                  //         //       style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,
                  //         //         color: Color(0xffffffff)),),
                  //         //     SizedBox(height: height*0.02,),
                  //         //     Row(
                  //         //       children: [
                  //         //         Container(
                  //         //           child: Text("Lorem ipsum dolor sit amet consectetur.\nNam nec tincidunt neque duis volutpat est.\nErat viverra feugiat ut dignissim ultricies.",
                  //         //               style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,
                  //         //                   color: Color(0xffffffff))),
                  //         //         ),
                  //         //         SizedBox(width: width*0.05,),
                  //         //         Container(
                  //         //           child: Center(child: SvgPicture.asset("assets/images/download.svg",height: 25,width: 25,)),
                  //         //         )
                  //         //       ],
                  //         //     ),
                  //         //     SizedBox(height: height*0.05,),
                  //         //     Padding(
                  //         //       padding: const EdgeInsets.only(left: 90),
                  //         //       child: Row(
                  //         //         mainAxisAlignment: MainAxisAlignment.center,
                  //         //        // crossAxisAlignment: CrossAxisAlignment.center,
                  //         //         children: [
                  //         //           SvgPicture.asset("assets/images/dislike.svg",height: 50,width: 50,),
                  //         //           SvgPicture.asset("assets/images/star.svg",height: 50,width: 50,),
                  //         //           SvgPicture.asset("assets/images/like.svg",height: 50,width: 50,)
                  //         //         ],
                  //         //       ),
                  //         //     )
                  //         //   ],
                  //         // ),
                  //       ),
                  //     ))
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

class Content {
  final String? text;
  Content({this.text});
}

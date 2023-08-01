import 'package:flutter/material.dart';

import '../Customer/CustomerSwipePink.dart';

class JoinNowScreen extends StatefulWidget {
  const JoinNowScreen({super.key});

  @override
  State<JoinNowScreen> createState() => _JoinNowScreenState();
}

class _JoinNowScreenState extends State<JoinNowScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
              width: double.infinity,height: height,
              child: Image.asset("assets/images/JoinNowImage.png",fit: BoxFit.cover,)
          ),
          Positioned(
              bottom: height*0.3,left: width*0.09,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(' Let’s be\nBuldding',style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.w600,color: Color(0xffffffff)),),
                    SizedBox( height: height*0.05,),
                    Text('Find someone that wants to buildings',style: TextStyle(fontSize: 11,
                        fontWeight: FontWeight.w600,color: Color(0xffffffff)),),

                    SizedBox(height: height*0.05,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CustomerSwipePink()));
                      },
                      child: Container(
                        height: height*0.07,
                        width: width*0.85,
                        decoration: BoxDecoration(color: Color(0xffD80E7A),borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Join Now",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w700,fontSize: 16),)),
                        //  color: Colors.amber,
                      ),
                    ),SizedBox( height: height*0.05,),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text('No Thanks',style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w700,color: Color(0xffffffff)),),
                    ),

                  ],
                ),
              )),

        ]),
      ],),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hellolead/Common/PropertyListScreen.dart';

class AdminSearchLand extends StatefulWidget {
  const AdminSearchLand({super.key});

  @override
  State<AdminSearchLand> createState() => _AdminSearchLandState();
}

class _AdminSearchLandState extends State<AdminSearchLand> {
  TextEditingController searchController = TextEditingController();
  List category = ["Buildings","Plots","House","Farmhouse"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffF5F4F8),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      controller: searchController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Search Land',
                        hintStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w600,fontSize: 14),
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        // Perform search functionality here
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Container(
                // height: 50,
                // width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Container(height: 40,width: 40,
                        child: SvgPicture.asset("assets/images/RentLogo.svg"))),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Time to Explore",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                          SizedBox(height: height*0.01,),
                          Text("My vibe...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff848484),),),
                        ],
                      ),
                    ),
                    Expanded(child: Container(height: 40,width: 40,
                        child: SvgPicture.asset("assets/images/BuyLogo.svg")))
                  ],
                ),
              ),
              SizedBox(height: height*0.02,),
              Expanded(
                child: MasonryGridView.builder(
                  itemCount: 4,
                  gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PropertyListScreen()));
                    },
                          child: Container(
                            child: Stack(
                                children:[
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Image.asset('assets/images/BuildingImage${index + 1}.png'),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    child: Container(
                                      //   width: MediaQuery.of(context).size.width/2,
                                      padding: EdgeInsets.symmetric(horizontal:10,vertical:10),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            // height: 40,
                                            // width: 40,
                                            decoration: BoxDecoration(
                                              // color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: Offset(0, 1),
                                                  blurRadius: 5,
                                                  color: Colors.black.withOpacity(0.3),
                                                ),
                                              ],
                                            ),
                                            child: Text(category[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                                          ),
                                          SizedBox(height: 80,),
                                          Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: Colors.white,
                                                borderRadius: BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(0, 1),
                                                    blurRadius: 5,
                                                    color: Colors.black.withOpacity(0.3),
                                                  ),
                                                ],
                                              ),
                                              child: Text("Lorem ipsum dolor sit\namet consectetur.",style: TextStyle(color: Colors.white,fontSize: 14))
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

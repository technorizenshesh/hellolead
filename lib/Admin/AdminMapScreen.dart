import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hellolead/Widgets/CustomAppBar.dart';

class AdminMapScreen extends StatefulWidget {
  const AdminMapScreen({super.key});

  @override
  State<AdminMapScreen> createState() => _AdminMapScreenState();
}

class _AdminMapScreenState extends State<AdminMapScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: appBar(context: context,actions: [
      //   Container(
      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffF5F4F8),),
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 8.0),
      //       child: TextField(
      //         controller: searchController,
      //         decoration: InputDecoration(
      //           suffixIcon: Icon(Icons.search),
      //           hintText: 'Search for people, Property, tags...',
      //           hintStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w600,fontSize: 14),
      //           border: InputBorder.none,
      //         ),
      //       ),
      //     ),
      //   ),
      // ]),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.06,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffF5F4F8),),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search,color: Colors.grey,),
                      hintText: 'Search for people, Property, tags...',
                      hintStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w600,fontSize: 14),
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/images/MapImage.png',fit: BoxFit.cover,width: width,),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset('assets/images/FilterIcon.svg'))),
                Positioned(
                    bottom: 0,
                    child: Image.asset('assets/images/MapStackImage.png',width: width))
              ],
            )
          ],
        ),
      ),
    );
  }
}

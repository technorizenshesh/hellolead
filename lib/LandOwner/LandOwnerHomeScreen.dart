import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hellolead/Common/AddPropertyScreen.dart';
import 'package:hellolead/LandOwner/LandOwnerHomeTab.dart';

class LandOwnerHomeScreen extends StatefulWidget {
  const LandOwnerHomeScreen({super.key});

  @override
  State<LandOwnerHomeScreen> createState() => _LandOwnerHomeScreenState();
}

class _LandOwnerHomeScreenState extends State<LandOwnerHomeScreen> {
  int index = 0;
  final List screens=[
     const LandOwnerHomeTab(),
     const AddPropertyScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(

        data: const NavigationBarThemeData(
          indicatorColor:  Color(0xffFFFFFF),
        ),
        child: NavigationBar(
          height:80,
          backgroundColor: const Color(0xffFFFFFF),
          selectedIndex: index,
          onDestinationSelected: (index)=>
              setState(() => this.index = index
              ),
          destinations: [
            NavigationDestination(
              icon: index == 0
                  ? Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffF74682), // Set the color of the indicator line
                      width: 4.0, // Set the width of the indicator line
                    ),
                  ),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    height: 30,
                    width: 35,
                    child: SvgPicture.asset('assets/images/HomeIconColored.svg'),
                  ),
                ),
              )
                  : Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.transparent, // Set the color of the indicator line
                      width: 4.0, // Set the width of the indicator line
                    ),
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top:15.0),
                  child:  SizedBox(
                      height: 30,
                      width: 35,
                      child:SvgPicture.asset('assets/images/HomeIconGrey.svg')
                  ),
                ),
              ), label: '',
              // icon: Image.asset("assets/images/chats.png",
              //   height: 25,width: 25,color: Color(0xffF74682)), label: '',
            ),


            NavigationDestination(
              icon: index == 1
                  ? Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffF74682), // Set the color of the indicator line
                      width: 4.0, // Set the width of the indicator line
                    ),
                  ),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/images/AddIconColored.svg')
                  ),
                ),
              )
                  : Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.transparent, // Set the color of the indicator line
                      width: 4.0, // Set the width of the indicator line
                    ),
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top:15.0),
                  child:  SizedBox(
                      height: 30,
                      width: 30,
                      child:SvgPicture.asset('assets/images/AddIconGrey.svg')
                  ),
                ),
              ), label: '',
              // icon: Image.asset("assets/images/Search.png",
              // height: 25,width: 25,color: Color(0xffF74682)), label: ''
            ),

          ],),
      ),
    );
  }
}

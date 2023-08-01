import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hellolead/Customer/CustomerChatScreen.dart';
import 'package:hellolead/Customer/CustomerHomeTab.dart';
import 'package:hellolead/Customer/CustomerProfileScreen.dart';
import 'package:hellolead/Customer/CustomerSearchLand.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int index = 0;
  final List screens=[
    const CustomerHomeTab(),
    const CustomerSearchLand(),
    const CustomerChatScreen(),
    const CustomerProfileScreen(),
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
                    child: SvgPicture.asset('assets/images/CardIconColored.svg'),
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
                      child:SvgPicture.asset('assets/images/CardIconGrey.svg')
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
                      child: SvgPicture.asset('assets/images/SearchPropertyIconColored.svg')
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
                      child:SvgPicture.asset('assets/images/SearchPropertyIconGrey.svg')
                  ),
                ),
              ), label: '',
              // icon: Image.asset("assets/images/Search.png",
              // height: 25,width: 25,color: Color(0xffF74682)), label: ''
            ),
            NavigationDestination(
              icon: index == 2
                  ? Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffF74682),// Set the color of the indicator line
                      width: 4.0, // Set the width of the indicator line
                    ),
                  ),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                      height: 28,
                      width: 28,
                      child:SvgPicture.asset('assets/images/ChatIconColored.svg')
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
                      height: 28,
                      width: 28,
                      child:SvgPicture.asset('assets/images/ChatIconGrey.svg')
                  ),
                ),
              ), label: '',
              // icon: Image.asset("assets/images/user.png",
              // height: 25,width: 25,color: Color(0xffF74682)), label: ''

            ),
            NavigationDestination(
              icon: index == 3
                  ? Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffF74682),// Set the color of the indicator line
                      width: 4.0, // Set the width of the indicator line
                    ),
                  ),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                      height: 28,
                      width: 28,
                      child: SvgPicture.asset('assets/images/ProfileIconColored.svg')
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
                      height: 28,
                      width: 28,
                      child: SvgPicture.asset('assets/images/ProfileIconGrey.svg')
                  ),
                ),
              ), label: '',

              // icon: Image.asset("assets/images/image.png",
              // height: 25,width: 25,color: Color(0xffF74682)), label: ''
            )
          ],),
      ),
    );
  }
}

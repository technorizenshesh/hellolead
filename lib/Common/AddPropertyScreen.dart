import 'package:flutter/material.dart';

import '../Constants/color_constant.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/CustomTexts.dart';

class AddPropertyScreen extends StatefulWidget {
  const AddPropertyScreen({super.key});

  @override
  State<AddPropertyScreen> createState() => _AddPropertyScreenState();
}

class _AddPropertyScreenState extends State<AddPropertyScreen> {
  TextEditingController PropertyNameController = TextEditingController();
  TextEditingController PropertyIDController = TextEditingController();
  TextEditingController SizeController = TextEditingController();
  TextEditingController LandAreaController = TextEditingController();
  TextEditingController ZoningController = TextEditingController();
  TextEditingController BedroomsController = TextEditingController();
  TextEditingController BathroomsController = TextEditingController();
  TextEditingController GaragesController = TextEditingController();
  TextEditingController PriceController = TextEditingController();
  TextEditingController CUSController = TextEditingController();
  TextEditingController COSController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Text("Add Property",style: TextStyle(fontFamily: "Poppins",color: Color(0xff252B5C),fontSize: 18,fontWeight: FontWeight.w700),),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: PropertyNameController,
                hintText: 'Property Name ',
                textcolor:ColorConstant.greyBarelyMedium,),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: PropertyIDController,
                hintText: "Property ID",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: SizeController,
                hintText: "Size (SqFt)",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: LandAreaController,
                hintText: "Land Area (SqFt)",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: ZoningController,
                hintText: "Zoning",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: BedroomsController,
                hintText: "Bedrooms",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: BathroomsController,
                hintText: "Bathrooms",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: GaragesController,
                hintText: "Garages",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: PriceController,
                hintText: "Price",
              ),     SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: COSController,
                hintText: "COS",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: CUSController,
                hintText: "CUS",
              ),
              CustomTextField(
                controller: AddressController,
                hintText: "Address 1",
                suffixIcon: 'assets/images/LocationMarkerColored.svg',
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.25,
                    height: height * 0.2,
                    child: Column(
                      children: [
                        ParagraphText(
                          text: "Add\nPhoto",
                          textAlign: TextAlign.center,
                          fontSize: 16,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                              width: width * 0.2,
                              height: height * 0.1,
                              child:Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.black12,
                              )
                            //     : Container(
                            //   width: width * 0.2,
                            //   height: height * 0.1,
                            //   child: Image.file(
                            //     imageIdFront!,
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.25,
                    height: height * 0.2,
                    child: Column(
                      children: [
                        ParagraphText(
                          text: "Add Link",
                          textAlign: TextAlign.center,
                          fontSize: 18,
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: width * 0.2,
                            height: height * 0.1,
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Colors.black12,
                            ),
                            //         : Container(
                            //       color: Colors.yellow,
                            //       width: width * 0.2,
                            //       height: height * 0.1,
                            //       child: Image.file(
                            //         imageIdBack!,
                            //         fit: BoxFit.cover,
                            //       ),
                            //     ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.25,
                    height: height * 0.2,
                    child: Column(
                      children: [
                        ParagraphText(
                          text: "Add Documents",
                          textAlign: TextAlign.center,
                          fontSize: 16,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: width * 0.2,
                            height: height * 0.1,
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Colors.black12,
                            ),
                            //     : Container(
                            //   color: Colors.yellow,
                            //   width: width * 0.2,
                            //   height: height * 0.1,
                            //   child: Image.file(
                            //     imageBankStatment!,
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CustomButton(
                  text: "Upload",
                  width: width * 0.9,
                  height: height * 0.06,
                  onTap: () {

                  }
              ),
            ],

          ),
        ),
      ),
    );
  }
}

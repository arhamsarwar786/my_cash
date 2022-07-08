import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_cash/controllers/Preferences/preferences.dart';
import '../../../Utils/constant.dart';
import '../../../controllers/GlobalState.dart';
import '../../../widgets.dart';
import '../certification_center.dart';
import 'widgets.dart';

class BasicInformation3 extends StatefulWidget {
  const BasicInformation3({Key? key}) : super(key: key);

  @override
  State<BasicInformation3> createState() => _BasicInformation3State();
}

class _BasicInformation3State extends State<BasicInformation3> {
  final incomeController = TextEditingController();
  final designationController = TextEditingController();
  final companyNameController = TextEditingController();
  final companyAddressController = TextEditingController();
  final companyTelephoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: primayColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: 20,
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                      ),
                      Text(
                        "Personal Information",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //  Header TABS ..............

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Column(
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Image(
                                    image: AssetImage("assets/images/tick.png"),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Divider(
                                height: 10,
                                color: Colors.grey,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Column(children: [
                            CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Image(
                                  image: AssetImage("assets/images/tick.png"),
                                )),
                          ]),
                        ),
                        Container(
                          height: 40,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Divider(
                                height: 10,
                                color: Colors.grey,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: kprimayColor,
                                radius: 20,
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Text Security...
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.security,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "This Information will only be used in Emergency Situations and we will ensure your Information Security",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.04),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      title: "Monthly Income",
                      controller: incomeController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 70,
                    ),
                    CustomTextField(
                      title: "Designation",
                      controller: designationController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 70,
                    ),
                    CustomTextField(
                      title: "Company Name",
                      controller: companyNameController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 70,
                    ),
                    CustomTextField(
                      title: "Company Address",
                      controller: companyAddressController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 70,
                    ),
                    CustomTextField(
                      title: "Company Telephone",
                      controller: companyTelephoneController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 70,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () async {
                          if (incomeController.text.isEmpty) {
                            snackBar(context, "Please! Enter Monthly Income");
                          } else if (designationController.text.isEmpty) {
                            snackBar(context, "Please! Enter Designation");
                          } else if (companyNameController.text.isEmpty) {
                            snackBar(context, "Please! Company Name");
                          } else if (companyAddressController.text.isEmpty) {
                            snackBar(context, "Please! Enter Company Address");
                          } else if (companyTelephoneController.text.isEmpty) {
                            snackBar(
                                context, "Please! Enter Company Telephone");
                          } else {

                            GlobalState.userDetails!.income =
                                incomeController.text;
                            GlobalState.userDetails!.designation =
                                designationController.text;
                            GlobalState.userDetails!.companyName =
                                companyNameController.text;
                            GlobalState.userDetails!.companyAddress =
                                companyAddressController.text;
                            GlobalState.userDetails!.companyTelephone =
                                companyTelephoneController.text;

                        // print(GlobalState.userDetails.des);
                          SavedPreferences.saveUserDetails(
                              jsonEncode(GlobalState.userDetails));

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Certifiction()));
                          }

                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.60,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                gradient: LinearGradient(colors: [
                                  primayColor,
                                  primayColor,
                                ]),
                              ),
                              child: Text("Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18.0))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}


// icome,designation,companyName,companyAddress,companyTelephone


// Stack(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/images/bgimage.png"),
//                       fit: BoxFit.fill)),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             iconSize: 20,
//                             icon: const Icon(
//                               Icons.arrow_back_ios,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width * 0.15,
//                           ),
//                           Text(
//                             "Personal Information",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w700),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       //  Header TABS ..............

//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 20.0,
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: MediaQuery.of(context).size.width / 5,
//                               child: Column(
//                                 children: [
//                                   CircleAvatar(
//                                       backgroundColor: Colors.green,
//                                       child: Image(
//                                         image: AssetImage(
//                                             "assets/images/tick.png"),
//                                       )),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 40,
//                               width: 50,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: const [
//                                   Divider(
//                                     height: 10,
//                                     color: Colors.grey,
//                                     thickness: 2,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width / 5,
//                               child: Column(children: [
//                                 CircleAvatar(
//                                     backgroundColor: Colors.green,
//                                     child: Image(
//                                       image:
//                                           AssetImage("assets/images/tick.png"),
//                                     )),
//                               ]),
//                             ),
//                             Container(
//                               height: 40,
//                               width: 50,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: const [
//                                   Divider(
//                                     height: 10,
//                                     color: Colors.grey,
//                                     thickness: 2,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width / 5,
//                               child: Column(
//                                 children: [
//                                   CircleAvatar(
//                                     backgroundColor: kprimayColor,
//                                     radius: 20,
//                                     child: const Text(
//                                       "3",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       // Text Security...
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 20),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.security,
//                               size: 50,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 8,
//                             ),
//                             Expanded(
//                               flex: 1,
//                               child: Text(
//                                 "This Information will only be used in Emergency Situations and we will ensure your Information Security",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 17),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),

//                     
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),

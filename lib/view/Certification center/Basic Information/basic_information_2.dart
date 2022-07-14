import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/view/Certification%20center/Basic%20Information/contacts_list.dart';
import 'package:my_cash/widgets.dart';
import '../../../Utils/constant.dart';
import '../../../models/contacts_model.dart';
import '../../../models/userDetailModel.dart';
import 'basic_information_3.dart';

class BasicInformation2 extends StatefulWidget {
  const BasicInformation2({Key? key}) : super(key: key);

  @override
  State<BasicInformation2> createState() => _BasicInformation2State();
}

class _BasicInformation2State extends State<BasicInformation2> {
  List<SecondaryContact>? contactsList = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: primayColor,
            tooltip: "ADD CONTACT",
            child: const Icon(
              Icons.add,
            ),
            onPressed: () async {
              var contact = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactsList()));
              // print(contact);
              if (contact != null) {
                var selectedContact = SecondaryContact.fromJson(contact);
                if (contactsList!.contains(selectedContact.number)) {
                  snackBar(context, "Already Added");
                } else {
                  contactsList!.add(selectedContact);
                }
              }

              setState(() {});
            },
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                                        image: AssetImage(
                                            "assets/images/tick.png"),
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
                                  backgroundColor: kprimayColor,
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
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
                                  const CircleAvatar(
                                    backgroundColor: Colors.black54,
                                    radius: 20,
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
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
                if (contactsList!.isEmpty)
                 Container(
                  height: 100,
                   child: const Center(
                      child: Text("Please Add Contacts"),
                    ),
                 )
                else
                  for (int i = 0; i < contactsList!.length; i++)
                    Container(
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emergency Contact ${i + 1}",
                              style: TextStyle(
                                  color: primayColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 10,
                                shadowColor: primayColor,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.20,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // RELATIONSHIP //

                                        SizedBox(
                                          height: 40,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: primayColor, width: 2),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "${contactsList![i].relationship}"),
                                            ),
                                          ),
                                        ),
                                        // Name
                                        SizedBox(
                                          height: 40,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: primayColor, width: 2),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "${contactsList![i].name}"),
                                            ),
                                          ),
                                        ),

                                        // number
                                        SizedBox(
                                          height: 40,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: primayColor, width: 2),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "${contactsList![i].number}"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                          ],
                        ),
                      ),
                    ),

                /// Next
                Center(
                  child: InkWell(
                    onTap: () {
                      if (contactsList!.isEmpty) {
                        snackBar(context, "Please! Add Emergency Contacts");
                      } else {
                        GlobalState.userDetails!.secondaryContacts =
                            jsonEncode(contactsList);
                        // print(GlobalState.userDetails!.toJson());
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BasicInformation3()));
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
                          child: Text("Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0))),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}



























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
//                             "Contact Information",
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
//                                     backgroundColor: kprimayColor,
//                                     child: CircleAvatar(
//                                         backgroundColor: Colors.green,
//                                         child: Image(
//                                           image: AssetImage(
//                                               "assets/images/tick.png"),
//                                         )),
//                                   ),
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
//                                   backgroundColor: kprimayColor,
//                                   child: Text(
//                                     "2",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
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
//                                   const CircleAvatar(
//                                     backgroundColor: Colors.black54,
//                                     radius: 20,
//                                     child: Text(
//                                       "3",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 15,
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
//                       // SizedBox(
//                       //   height: MediaQuery.of(context).size.height / 70,
//                       // ),
//                       Column(
//                         children: [
//                          
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
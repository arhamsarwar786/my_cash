import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/models/contact_detail.dart';
import 'package:my_cash/widgets.dart';

import '../../../Utils/constant.dart';
import 'basic_information_3.dart';

class BasicInformation2 extends StatefulWidget {
  const BasicInformation2({Key? key}) : super(key: key);

  @override
  State<BasicInformation2> createState() => _BasicInformation2State();
}

class _BasicInformation2State extends State<BasicInformation2> {
  final relationshipController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();

  List<ContactDetail> contacts = [];
  ContactDetail? contact;

  addContact() {
    contact =
        ContactDetail.fromJson({"relation": "", "name": "", "number": ""});
    setState(() {
      contacts.add(contact!);
    });

    print(contacts);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: primayColor,
              child: Icon(Icons.add),
              onPressed: () {
                addContact();
              }),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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

                  if(contacts.isEmpty)
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    child: Text("Please! Add Contacts")),
                   
                // Contacts
                for (int i = 0; i < contacts.length; i++)

                
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
                                  fontWeight: FontWeight.w700),
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
                                        // ....................................

                                        SizedBox(
                                          height: 40,
                                          child: TextField(
                                            onChanged: (value) {
                                              contacts[i].relation = value;
                                            },
                                            keyboardType: TextInputType.name,
                                            cursorColor: primayColor,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              fillColor: Colors.white,
                                              filled: true,
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              hintText: "Relationshinp",
                                              hintStyle: TextStyle(
                                                  color: Colors.black38,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        // Name
                                        SizedBox(
                                          height: 40,
                                          child: TextField(
                                            onChanged: (value) {
                                              contacts[i].name = value;
                                            },
                                            keyboardType: TextInputType.name,
                                            cursorColor: primayColor,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              fillColor: Colors.white,
                                              filled: true,
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              hintText: "Name",
                                              hintStyle: TextStyle(
                                                  color: Colors.black38,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),

                                        // number
                                        SizedBox(
                                          height: 40,
                                          child: TextField(
                                            onChanged: (value) {
                                              contacts[i].number = value;
                                            },
                                            keyboardType: TextInputType.phone,
                                            cursorColor: primayColor,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              fillColor: Colors.white,
                                              filled: true,
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              hintText: " Mobile Number",
                                              hintStyle: TextStyle(
                                                  color: Colors.black38,
                                                  fontSize: 16),
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
                      )),

                // Next
                Center(
                  child: InkWell(
                    onTap: () {
                      if (contacts.isEmpty || contacts.length == 1) {
                        snackBar(context, "Please! Add atleast 2 Contacts");
                      } else {
                        GlobalState.userDetails!.secondaryContacts =
                            jsonEncode(contacts);
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

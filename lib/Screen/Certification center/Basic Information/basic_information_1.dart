import 'package:flutter/material.dart';

import '../../../Utils/constant.dart';
import 'basic_information_2.dart';


class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
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
                  const Text(
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
                              backgroundColor: kprimayColor,
                              child: Text(
                                "1",
                                style: TextStyle(
                                    color: primayColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
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
                        const CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            color: Colors.white, fontSize: size.width * 0.04),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 30.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                gradient: LinearGradient(colors: [
                                  primayColor,
                                  primayColor,
                                ]),
                              ),
                              child: Text("Male",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0))),
                        ),
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 30.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                gradient: LinearGradient(colors: [
                                  primayColor,
                                  primayColor,
                                ]),
                              ),
                              child: Text("FeMale",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  TextField(
                    // controller: text,
                    keyboardType: TextInputType.name,
                    cursorColor: primayColor,
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      fillColor: Colors.white,
                      filled: true,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Enter Qualification",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Martial Status",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  TextField(
                    // controller: text,
                    keyboardType: TextInputType.name,
                    cursorColor: primayColor,
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      fillColor: Colors.white,
                      filled: true,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Enter Martial Satatus",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Province",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  TextField(
                    // controller: text,
                    keyboardType: TextInputType.name,
                    cursorColor: primayColor,
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      fillColor: Colors.white,
                      filled: true,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Enter Province Name",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Permanent Address",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  TextField(
                    // controller: text,
                    keyboardType: TextInputType.name,

                    cursorColor: primayColor,
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      fillColor: Colors.white,
                      filled: true,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Enter Permanent Address",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BasicInformation2()));
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
                  ),
                ],
              ),
            ))
      ])),
    ));
  }
}

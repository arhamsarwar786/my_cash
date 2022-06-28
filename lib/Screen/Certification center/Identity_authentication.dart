import 'package:flutter/material.dart';

import '../../Utils/constant.dart';
import 'identity_authentication2.dart';


class Identify extends StatefulWidget {
  const Identify({Key? key}) : super(key: key);

  @override
  State<Identify> createState() => _IdentifyState();
}

class _IdentifyState extends State<Identify> {
  bool _mobilePayment = true;
  bool _bankPayment = false;
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          width: size.width * 0.35,
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
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                      // height: MediaQuery.of(context).size.height * 0.75,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "CNIC",
                                style: TextStyle(
                                    color: primayColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _mobilePayment = true;
                                        _bankPayment = false;
                                        setState(() {});
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: _mobilePayment
                                                ? const Color(0xFFFFc100)
                                                : const Color(0xFFCCCCCC),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: _mobilePayment
                                                ? Border.all(
                                                    color: Colors.black,
                                                    width: 3)
                                                : null,
                                            boxShadow: kElevationToShadow[4]),
                                        height: size.height * 0.15,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white38,
                                              child: Icon(
                                                Icons.camera,
                                                size: 30,
                                                color: primayColor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "CNIC Front",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: size.width * 0.04,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _mobilePayment = false;
                                        _bankPayment = true;
                                        setState(() {});
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: _bankPayment
                                                ? const Color(0xFFFFc100)
                                                : const Color(0xFFCCCCCC),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: _bankPayment
                                                ? Border.all(
                                                    color: Colors.black,
                                                    width: 3)
                                                : null,
                                            boxShadow: kElevationToShadow[2]),
                                        height: size.height * 0.15,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white54,
                                              child: Icon(
                                                Icons.camera,
                                                size: 30,
                                                color: primayColor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "CNIC Back",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: size.width * 0.04,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Full Name",
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 16),
                              ),
                            ),
                            SizedBox(height: size.height / 70),
                            Text(
                              "CNIC Number",
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
                              keyboardType: TextInputType.number,
                              cursorColor: primayColor,
                              autofocus: false,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 25),
                                fillColor: Colors.white,
                                filled: true,
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "CNIC Number",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 16),
                              ),
                            ),
                            SizedBox(height: size.height / 70),
                            Text(
                              "Date of Birth",
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
                              keyboardType: TextInputType.datetime,
                              cursorColor: primayColor,
                              autofocus: false,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 25),
                                fillColor: Colors.white,
                                filled: true,
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Daate of Birth",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (Contect) => Identify2()));
                                },
                                child: Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        color: Colors.black,
                                      ),
                                      child: Text("Save",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: size.width * 0.04))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ))
        ]),
      )),
    );
  }
}

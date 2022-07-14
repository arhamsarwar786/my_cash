import 'dart:convert';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/controllers/API_MANGER/api_manager.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/Preferences/preferences.dart';
import 'package:my_cash/models/packages_model.dart';
import 'package:my_cash/models/post_package_model.dart';
import 'package:my_cash/view/Certification%20center/Basic%20Information/basic_information_2.dart';
import 'package:my_cash/view/home/widgets.dart';
import 'package:my_cash/view/my_account.dart';
import 'package:my_cash/widgets.dart';
import '../../Utils/constant.dart';
import '../Certification center/Basic Information/contacts_list.dart';
import '../Certification center/certification_center.dart';
import '../FAQ.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value = 1000;

  bool _hasBeenPressed = false;
  int selectedPackageIndex = 0;
  List<PackagesModel>? dataList;

  @override
  void initState() {
    super.initState();
    // GlobalState.userDetails!.phoneNumber =
    //     FirebaseAuth.instance.currentUser!.phoneNumber;
    getPackagesList();
  }

  getPackagesList() async {
    dataList = await getPackages();
    setState(() {});
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      drawer: Menu(),
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
          ),
          Container(
            height: size.height / 2,
            width: size.width,
            color: primayColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        tooltip: MaterialLocalizations.of(context)
                            .openAppDrawerTooltip,
                      );
                    }),
                    const Text(
                      "MyCash",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FAQ()));
                        },
                        child: const Icon(
                          Icons.help,
                          size: 25,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: dataList == null
                      ? const CircularProgressIndicator.adaptive()
                      : Container(
                          height: size.height * 0.50,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: kprimayColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${dataList![selectedPackageIndex].packageName}"
                                      .toUpperCase(),
                                  style: TextStyle(
                                      color: primayColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "Maximum Loan Amount",
                                  style: TextStyle(
                                      color: primayColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "${dataList![selectedPackageIndex].packageAmount} PKR",
                                  style: TextStyle(
                                      fontFamily: "calibriBold",
                                      color: primayColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),

                                const Text(
                                  "Loan Amount",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  " ${_value}PKR",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Slider(
                                      min: 0.0,
                                      max: double.parse(
                                          dataList![selectedPackageIndex]
                                              .packageAmount!),
                                      inactiveColor: Colors.grey,
                                      activeColor: primayColor,
                                      value: _value,
                                      divisions: 100,
                                      label: '${_value.round()}',
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value;
                                        });
                                      },
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "1000 PKR",
                                          style: TextStyle(
                                              color: primayColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          "${dataList![selectedPackageIndex].packageAmount} PKR",
                                          style: TextStyle(
                                              color: primayColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Text(
                                  "Loan Duration",
                                  style: TextStyle(
                                      color: primayColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),

                                //  days Buttom

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    for (int i = 0; i < dataList!.length; i++)
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  selectedPackageIndex == i
                                                      ? primayColor
                                                      : Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                          onPressed: () {
                                            setState(() {
                                              selectedPackageIndex = i;
                                              _value = 1000;
                                            });
                                          },
                                          child: Text(
                                            "${dataList![i].duration}",
                                            style: TextStyle(
                                                color: selectedPackageIndex == i
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (dataList == null) {
                    snackBar(context, "Select Package First");
                  } else {
                    GlobalState.userDetails!.phoneNumber =
                        FirebaseAuth.instance.currentUser!.phoneNumber;
                    GlobalState.postPackage = PostPackageModel.fromJson({
                      "id": dataList![selectedPackageIndex].id,
                      "userId": "",
                      "userName": "",
                      "packageName":
                          dataList![selectedPackageIndex].packageName,
                      "amount": "$_value",
                      "interestAmount":
                          dataList![selectedPackageIndex].interestAmount,
                      "duration": dataList![selectedPackageIndex].duration,
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Context) => Certifiction()));
                  }
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                      alignment: Alignment.center,
                      width: size.width * 0.70,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        gradient: LinearGradient(colors: [
                          primayColor,
                          primayColor,
                        ]),
                      ),
                      child: const Text("Apply",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0))),
                ),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  height: 60,
                  width: size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                          ),
                          height: 60,
                          width: size.width * 0.50,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: kprimayColor,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(color: kprimayColor),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyAccount()));
                          },
                          child: Container(
                            height: 60,
                            width: size.width * 0.50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_circle_outlined),
                                  Text("My Account")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ])),
            ],
          ),
        ],
      ),
    ));
  }
}

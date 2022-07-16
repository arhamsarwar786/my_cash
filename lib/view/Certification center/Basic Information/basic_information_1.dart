import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/widgets.dart';
import '../../../Utils/constant.dart';
import 'basic_information_2.dart';
import 'widgets.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  // Controllers

  final fullNameController = TextEditingController();
  final cityController = TextEditingController();
  final provinceController = TextEditingController();
  final addressController = TextEditingController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: primayColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(
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
                          CircularNumbering("1"),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Column(children: [
                        CircularNumbering("2"),
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
                          CircularNumbering("3"),
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
                            color: Colors.white, fontSize: size.width * 0.03),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  color: isMale ? primayColor : Colors.white,
                                ),
                                child: Text("Male",
                                    style: TextStyle(
                                        color: isMale
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13.0))),
                          ),
                        ),
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  color: isMale ? Colors.white : primayColor,
                                ),
                                child: Text("Female",
                                    style: TextStyle(
                                        color: !isMale
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13.0))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  // Text(
                  //   "Education",
                  //   style: TextStyle(
                  //       color: primayColor,
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.w500),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height / 70,
                  // ),
                  // TextField(
                  //   // controller: text,
                  //   keyboardType: TextInputType.name,
                  //   cursorColor: primayColor,
                  //   autofocus: false,
                  //   decoration: InputDecoration(
                  //     contentPadding: const EdgeInsets.symmetric(
                  //         vertical: 15.0, horizontal: 25),
                  //     fillColor: Colors.white,
                  //     filled: true,
                  //     errorBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.red),
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.grey),
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     disabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.grey),
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.grey),
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.grey),
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     hintText: "Enter Qualification",
                  //     hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                  //   ),
                  // ),
                  CustomTextField(
                      title: "Full Name",
                      controller: fullNameController,
                      type: TextInputType.name),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70 - 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Martial Status",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Martial Status",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.036,
                              fontWeight: FontWeight.w500),
                        ),
                        dropdownColor: Colors.white,
                        // value: selectedWalletType,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedMarial = newValue!;
                          });
                        },
                        items: marialList),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70 - 5,
                  ),
                  // Education
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Education",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: primayColor, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Education",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.036,
                              fontWeight: FontWeight.w500),
                        ),
                        dropdownColor: Colors.white,
                        // value: selectedWalletType,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedEducation = newValue!;
                          });
                        },
                        items: educationList),
                  ),
               
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  CustomTextField(
                    title: "City",
                    controller: cityController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  CustomTextField(
                    title: "Province",
                    controller: provinceController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  CustomTextField(
                    title: "Permanent Address",
                    controller: addressController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (fullNameController.text.isEmpty) {
                          snackBar(context, "Please! Enter Full Name");
                        } else if (selectedMarial == null ||   selectedMarial!.isEmpty) {
                          snackBar(context, "Please! Enter Martial Status");
                        } else if (selectedEducation == null ||   selectedEducation!.isEmpty) {
                          snackBar(context, "Please! Enter Education");
                        } else if (cityController.text.isEmpty) {
                          snackBar(context, "Please! Enter City");
                        } else if (provinceController.text.isEmpty) {
                          snackBar(context, "Please! Enter Province");
                        } else if (addressController.text.isEmpty) {
                          snackBar(context, "Please! Enter Address");
                        } else {
                          print(GlobalState.userDetails);
                          if (isMale) {
                            GlobalState.userDetails!.gender = 'M';
                          } else {
                            GlobalState.userDetails!.gender = 'F';
                          }

                          GlobalState.userDetails!.fullName =
                              fullNameController.text;
                          GlobalState.userDetails!.martialStatus =
                              selectedMarial;
                          GlobalState.userDetails!.education =
                              selectedEducation;
                          GlobalState.userDetails!.city = cityController.text;
                          GlobalState.userDetails!.province =
                              provinceController.text;
                          GlobalState.userDetails!.address =
                              addressController.text;

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BasicInformation2()));
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
                  ),
                ],
              ),
            ))
      ])),
    ));
  }

  String? selectedMarial;
  List<DropdownMenuItem<String>> get marialList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Single"), value: "single"),
      DropdownMenuItem(child: Text("Married"), value: "married"),
      DropdownMenuItem(child: Text("Widowed"), value: "widowed"),
      DropdownMenuItem(child: Text("Divorced"), value: "divorced"),
    ];
    return menuItems;
  }


    String? selectedEducation;
  List<DropdownMenuItem<String>> get educationList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Under Matric"), value: "underMatric"),
      DropdownMenuItem(child: Text("Matric"), value: "Matric"),
      DropdownMenuItem(child: Text("Intermediate"), value: "intermediate"),
      DropdownMenuItem(child: Text("Graduation"), value: "graduation"),
      DropdownMenuItem(child: Text("Masters"), value: "masters"),
    ];
    return menuItems;
  }
}

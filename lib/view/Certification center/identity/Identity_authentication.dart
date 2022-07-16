import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_cash/controllers/API_MANGER/api_manager.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/image_picker_controller.dart';
import 'package:my_cash/view/Certification%20center/Basic%20Information/widgets.dart';
import 'package:my_cash/widgets.dart';
import '../../../Utils/constant.dart';
import '../widgets.dart';
import 'identity_authentication2.dart';
import 'widgets.dart';

class Identify extends StatefulWidget {
  const Identify({Key? key}) : super(key: key);

  @override
  State<Identify> createState() => _IdentifyState();
}

class _IdentifyState extends State<Identify> {
  bool _mobilePayment = true;
  bool _bankPayment = false;
  String? dob = "";

  final cnicController = TextEditingController();
  




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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                  const SizedBox(
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
                                        showMyDialogue(context, 'front');

                                        _mobilePayment = true;
                                        _bankPayment = false;

                                        setState(() {});
                                      },
                                      child: frontImageMethod(
                                          context, size, _mobilePayment),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        showMyDialogue(context, 'back');
                                        _mobilePayment = false;
                                        _bankPayment = true;
                                        setState(() {});
                                      },
                                      child: backImageMethod(
                                          context, size, _bankPayment),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: size.height / 70),
                            CustomTextField(
                              title: "CNIC Number",
                              controller: cnicController,
                              type: TextInputType.number,
                            ),
                            SizedBox(height: size.height / 70),
                            Text(
                              "Date of Birth",
                              style: TextStyle(
                                  color: primayColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                ElevatedButton.icon(
                                    onPressed: () async{
                                     var pickedDate = await selectDate(context);
                                    dob = DateFormat('dd-MMM-yyyy').format(pickedDate);
                                     setState(() {
                                     print(dob);
                                       
                                     });
                                    },
                                    icon: Icon(Icons.calendar_month_outlined),
                                    label: Text("Pick Date")),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    if(dob != null || dob != "")  Text("$dob"),
                              ],
                            ),
                            
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () async {
                                  setState(() {});
                                  if (cnicController.text.isEmpty ||
                                      cnicController.text.length != 13) {
                                    snackBar(
                                        context, "Please! Enter Valid CNIC");
                                  } else if (dob == null || dob!.isEmpty) {
                                    snackBar(
                                        context, "Please! Enter Date of Birth");
                                  } else if (cnicFrontImgFile == null) {
                                    snackBar(context,
                                        "Please! Select CNIC Front Image");
                                  } else if (cnicBackImgFile == null) {
                                    snackBar(context,
                                        "Please! Select Back Front Image");
                                  } else {
                                    // print("Come");

                                    GlobalState.userDetails!.cnic =
                                        cnicController.text;
                                    GlobalState.userDetails!.dob =
                                        dob;
                                    GlobalState.userDetails!.cnicFrontImg =
                                        cnicFrontImgBase64;
                                    GlobalState.userDetails!.cnicBackImg =
                                        cnicBackImgBase64;

                                    setState(() {
                                      isCnicExist = true;
                                    });

                                    var cnicExist = await APIManager()
                                        .cnicChecker(
                                            cnic:
                                                GlobalState.userDetails!.cnic);
                                    print(GlobalState.userDetails!.cnic);
                                    print(cnicExist);
                                    if (cnicExist == "1") {
                                      showAlertDialog(context);
                                      setState(() {
                                        isCnicExist = false;
                                      });
                                    } else {
                                      setState(() {
                                        isCnicExist = false;
                                      });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (Contect) =>
                                                  Identify2()));
                                    }
                                  }
                                },
                                child: Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: primayColor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20.0)),
                                      ),
                                      child: isCnicExist
                                          ? CircularProgressIndicator.adaptive(
                                              backgroundColor: kprimayColor,
                                            )
                                          : Text("Next",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize:
                                                      size.width * 0.04))),
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

  bool isCnicExist = false;
}

import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import '../../Utils/constant.dart';
import '../../controllers/saving_user_details.dart';
import '../../widgets.dart';
import 'Basic Information/basic_information_1.dart';
import 'Mobile or Bank/mobile_bank.dart';
import 'identity/Identity_authentication.dart';

class Certifiction extends StatefulWidget {
  const Certifiction({Key? key}) : super(key: key);

  @override
  State<Certifiction> createState() => _CertifictionState();
}

class _CertifictionState extends State<Certifiction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: mainScreenAppBarPush(context, "Certification Center"),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primayColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enter Some Information that takes at most 5 minutes and you will be able to receive",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "100,000",
                              style: TextStyle(
                                  color: kprimayColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "PKR",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20,
                              height: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/coin.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              width: 40,
                              height: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/amico.png"),
                                      fit: BoxFit.fill)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    if (GlobalState.userDetails != null) {
                      basicInfoMethod();
                    } else {
                      snackBar(context, "Saving Some Data");
                      await saveUserGlobally();
                      basicInfoMethod();
                    }
                  },
                  child: Card(
                      shadowColor: primayColor,
                      elevation: 10,
                      child: ListTile(
                        title: Text(
                          "Basic Information",
                          style: TextStyle(
                              color: primayColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: Icon(
                          Icons.person,
                          color: kprimayColor,
                        ),
                        trailing: Icon(
                          GlobalState.userDetails != null
                              ? GlobalState.userDetails!.fullName != null
                                  ? Icons.done_outline
                                  : Icons.arrow_forward_ios
                              : Icons.arrow_forward_ios,
                          color: Colors.green,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    // print(GlobalState.userDetails!.fullName);
                    if (GlobalState.userDetails != null) {
                      isMobileMethod();
                    } else {
                      snackBar(context, "Saving Some Data");
                      await saveUserGlobally();
                      isMobileMethod();
                    }
                  },
                  child: Card(
                      shadowColor: primayColor,
                      elevation: 10,
                      child: ListTile(
                        title: Text(
                          "Mobile Wallet/Bank Card",
                          style: TextStyle(
                              color: primayColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: Icon(
                          Icons.account_balance,
                          color: kprimayColor,
                        ),
                        trailing: Icon(
                          GlobalState.userDetails != null
                              ? GlobalState.userDetails!.isMobile != null
                                  ? Icons.done_outline
                                  : Icons.arrow_forward_ios
                              : Icons.arrow_forward_ios,
                          color: Colors.green,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    if (GlobalState.userDetails != null) {
                      identifyMethod();
            //           Navigator.of(context)
            // .push(MaterialPageRoute(builder: (context) => Identify()));
                    } else {
                      snackBar(context, "Saving Some Data");
                      await saveUserGlobally();
                      identifyMethod();
                    }
                  },
                  child: Card(
                    shadowColor: primayColor,
                    elevation: 10,
                    child: ListTile(
                      title: Text(
                        "Identity Authentication",
                        style: TextStyle(
                            color: primayColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      leading: Icon(
                        Icons.fact_check_outlined,
                        color: kprimayColor,
                      ),
                      trailing: Icon(
                        GlobalState.userDetails != null
                            ? GlobalState.userDetails!.cnic != null
                                ? Icons.done_outline
                                : Icons.arrow_forward_ios
                            : Icons.arrow_forward_ios,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  identifyMethod() {
    if (GlobalState.userDetails!.fullName == null) {
      showAlert(context,
          title: "Failed",
          content: "Please! Enter Basic Information First",
          type: "error");
    } else if (GlobalState.userDetails!.isMobile == null) {
      showAlert(context,
          title: "Failed",
          content: "Please! Enter Mobile / Bank Card First",
          type: "error");
    } else {
      if (GlobalState.userDetails!.cnic != null) {
        snackBar(context, "Already Entered Details");
      } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Identify()));
      }
    }
  }

  isMobileMethod() {
    if (GlobalState.userDetails!.fullName == null) {
      showAlert(context,
          title: "Failed",
          content: "Please! Enter Basic Information First",
          type: "error");
    } else {
      if (GlobalState.userDetails!.isMobile != null) {
        snackBar(context, "Already Entered Details");
      } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Payment()));
      }
    }
  }

  basicInfoMethod() {
    if (GlobalState.userDetails!.fullName != null) {
      snackBar(context, "Already Entered Details");
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BasicInformation()));
    }
  }
}

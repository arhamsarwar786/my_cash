import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:my_cash/view/Certification%20center/Mobile%20or%20Bank/bank.dart';
import '../widgets.dart';
import '/Utils/constant.dart';
import 'mobile.dart';

class Payment extends StatefulWidget {
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isMobile = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xFF263238)),
        backgroundColor: const Color(0xFF263238),
        centerTitle: true,
        title: const Text(
          "Mobile Wallet/Bank Card",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Center(
                  child: Text(
                    "Choose the method to recieve money",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          isMobile = true;

                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: isMobile
                                  ? const Color(0xFFFFc100)
                                  : const Color(0xFFCCCCCC),
                              borderRadius: BorderRadius.circular(25),
                              border: isMobile
                                  ? Border.all(color: Colors.black, width: 4)
                                  : null,
                              boxShadow: kElevationToShadow[4]),
                          height: size.height * 0.15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/cellphone.png"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Mobile Wallet",
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
                          isMobile = false;

                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: !isMobile
                                  ? const Color(0xFFFFc100)
                                  : const Color(0xFFCCCCCC),
                              borderRadius: BorderRadius.circular(25),
                              border: !isMobile
                                  ? Border.all(color: Colors.black, width: 4)
                                  : null,
                              boxShadow: kElevationToShadow[2]),
                          height: size.height * 0.15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/wallet1.png",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Bank Wallet",
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
                  ],
                ),
              ),

              // Mobile Transfer
              if (isMobile) MobileAccount(),
              // Bank Transfer
              if (!isMobile) BankAccount(),

              saveButton(context,size,isMobile),
       
            ],
          ),
        ),
      ),
    );
  }
}

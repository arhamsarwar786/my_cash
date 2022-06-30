import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import '/Utils/constant.dart';

class Payment extends StatefulWidget {
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("EassyPaisa"), value: "EassyPaisa"),
      DropdownMenuItem(child: Text("Jazz Cash"), value: "Jazz Cash"),
      DropdownMenuItem(child: Text("U Paisa"), value: "U Paisa"),
    ];
    return menuItems;
  }


  List<DropdownMenuItem<String>> get bankNamesList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("United Bank Limited"), value: "United Bank Limited"),
      DropdownMenuItem(child: Text("Meezan Bank"), value: "Meezan Bank"),
      DropdownMenuItem(child: Text("HBL"), value: "HBL"),
      DropdownMenuItem(child: Text("Alfala"), value: "Alfala"),
    ];
    return menuItems;
  }

  bool _mobilePayment = true;
  bool _bankPayment = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String selectedValue = "";
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
                          _mobilePayment = true;
                          _bankPayment = false;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: _mobilePayment
                                  ? const Color(0xFFFFc100)
                                  : const Color(0xFFCCCCCC),
                              borderRadius: BorderRadius.circular(25),
                              border: _mobilePayment
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
                          _mobilePayment = false;
                          _bankPayment = true;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: _bankPayment
                                  ? const Color(0xFFFFc100)
                                  : const Color(0xFFCCCCCC),
                              borderRadius: BorderRadius.circular(25),
                              border: _bankPayment
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
              if(_mobilePayment)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Text(
                      "You can recieve loan through you mobile wallet, please register mobile wallet account with your mobile phone first",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Mobiel Wallet Type",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: SizedBox(
                        height: 50,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primayColor, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primayColor, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              label: const Text("Mobile Wallet Type"),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * 0.036,
                                  fontWeight: FontWeight.w500),
                            ),
                            dropdownColor: Colors.white,
                            // value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: dropdownItems),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Mobile Account Number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: kElevationToShadow[4]),
                      child: TextField(
                        // controller: text,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.black,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                          fillColor: Colors.white,
                          filled: true,
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          label: const Text("Account Number"),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.036,
                              fontWeight: FontWeight.w500),
                          prefixIcon: Image.asset(
                            "assets/images/cellphone2.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.black,
                          ),
                          child: Text("Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: size.width * 0.04))),
                    ),
                  ),
                ],
              ),
                // Bank Transfer
                if(_bankPayment)
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Text(
                      "You can recieve loan through you Bank wallet, please register Bank wallet account with your Account Number first",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Bank Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: SizedBox(
                        height: 50,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primayColor, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primayColor, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              label: const Text("Bank Name"),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * 0.036,
                                  fontWeight: FontWeight.w500),
                            ),
                            dropdownColor: Colors.white,
                            // value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: bankNamesList),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Bank Account Number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: kElevationToShadow[4]),
                      child: TextField(
                        // controller: text,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.black,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                          fillColor: Colors.white,
                          filled: true,
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          label: const Text("Bank Account Number"),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.036,
                              fontWeight: FontWeight.w500),
                          prefixIcon: Image.asset(
                            "assets/images/wallet2.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                       SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Branch Code",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: kElevationToShadow[4]),
                      child: TextField(
                        // controller: text,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.black,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                          fillColor: Colors.white,
                          filled: true,
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          label: const Text("Bank Branch Code"),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.036,
                              fontWeight: FontWeight.w500),
                          prefixIcon: Image.asset(
                            "assets/images/wallet2.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.black,
                          ),
                          child: Text("Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: size.width * 0.04))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    Widget BankWallet() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Text(
              "You can recieve loan through you mobile  wallet, please register mobile wallet account with your mobile phone first",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Bank Wallet Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SizedBox(
                height: 50,
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primayColor, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: primayColor, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text("Bank Name"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.036,
                          fontWeight: FontWeight.w500),
                    ),
                    dropdownColor: Colors.white,
                    // value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    items: dropdownItems),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Mobile Account Number",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: kElevationToShadow[4]),
              child: TextField(
                // controller: text,
                keyboardType: TextInputType.name,
                cursorColor: Colors.black,
                autofocus: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  label: const Text("Account Number"),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.036,
                      fontWeight: FontWeight.w500),
                  prefixIcon: Image.asset(
                    "assets/images/wallet1.png",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.black,
                  ),
                  child: Text("Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: size.width * 0.04))),
            ),
          ),
        ],
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:my_cash/view/Certification%20center/Basic%20Information/widgets.dart';

import '../../../Utils/constant.dart';
import '../widgets.dart';

class BankAccount extends StatefulWidget {
  

  @override
  State<BankAccount> createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {



  List<DropdownMenuItem<String>> get bankNamesList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("United Bank Limited"), value: "United Bank Limited"),
      DropdownMenuItem(child: Text("Meezan Bank"), value: "Meezan Bank"),
      DropdownMenuItem(child: Text("HBL"), value: "HBL"),
      DropdownMenuItem(child: Text("Alfala"), value: "Alfala"),
    ];
    return menuItems;
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
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
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Bank Name",
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
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primayColor, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: primayColor, width: 1),
                    borderRadius: BorderRadius.circular(10),
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
                // value: selectedWalletType,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBank = newValue!;
                  });
                },
                items: bankNamesList),
          ), SizedBox(
            height: 20,
          ),
          CustomTextField(title: "Bank Account Number",controller: bankAccountController,),
          SizedBox(
            height: 20,
          ),
          CustomTextField(title: "Branch Code",controller: bankBranchCodeController,),
          SizedBox(
            height: 40,
          ),
          
        ],
      ),
    );
  }
}

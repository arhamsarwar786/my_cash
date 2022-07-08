import 'package:flutter/material.dart';
import 'package:my_cash/view/Certification%20center/Basic%20Information/widgets.dart';

import '../../../Utils/constant.dart';
import '../widgets.dart';

class MobileAccount extends StatefulWidget {
  final selectedWalletType, mobileAccountController;
  MobileAccount({this.mobileAccountController, this.selectedWalletType});
  @override
  State<MobileAccount> createState() => _MobileAccountState();
}

class _MobileAccountState extends State<MobileAccount> {
  // for Mobile Account

  List<DropdownMenuItem<String>> get accountsList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("EassyPaisa"), value: "EassyPaisa"),
      DropdownMenuItem(child: Text("Jazz Cash"), value: "Jazz Cash"),
      DropdownMenuItem(child: Text("U Paisa"), value: "U Paisa"),
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
              "You can recieve loan through you mobile wallet, please register mobile wallet account with your mobile phone first",
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
              "Mobiel Wallet Type",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primayColor, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: primayColor, width: 1),
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
                // value: selectedWalletType,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedWalletType = newValue!;
                  });
                },
                items: accountsList),
          ),
          SizedBox(
            height: 20,
          ),

          CustomTextField(title: "Mobile Account Number",controller: mobileAccountController,),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

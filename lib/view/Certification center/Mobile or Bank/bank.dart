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
      DropdownMenuItem(child: FittedBox(child: Text("Al Baraka Bank (Pakistan) Limited",style: TextStyle(fontSize: 12),)), value: "Al Baraka Bank (Pakistan) Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Allied Bank Limited",style: TextStyle(fontSize: 12),)), value: "Allied Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Askari Bank",style: TextStyle(fontSize: 12),)), value: "Askari Bank"),
      DropdownMenuItem(child: FittedBox(child: Text("Bank Alfalah Limited",style: TextStyle(fontSize: 12),)), value: "Bank Alfalah Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Bank Al-Habib Limited",style: TextStyle(fontSize: 12),)), value: "Bank Al-Habib Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("BankIslami Pakistan Limited",style: TextStyle(fontSize: 12),)), value: "BankIslami Pakistan Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Citi Bank",style: TextStyle(fontSize: 12),)), value: "Citi Bank"),
      DropdownMenuItem(child: FittedBox(child: Text("Deutsche Bank A.G",style: TextStyle(fontSize: 12),)), value: "Deutsche Bank A.G"),
      DropdownMenuItem(child: FittedBox(child: Text("The Bank of Tokyo-Mitsubishi UFJ",style: TextStyle(fontSize: 12),)), value: "The Bank of Tokyo-Mitsubishi UFJ"),
      DropdownMenuItem(child: FittedBox(child: Text("Dubai Islamic Bank Pakistan Limited",style: TextStyle(fontSize: 12),)), value: "Dubai Islamic Bank Pakistan Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Faysal Bank Limited",style: TextStyle(fontSize: 12),)), value: "Faysal Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("First Women Bank Limited",style: TextStyle(fontSize: 12),)), value: "First Women Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Habib Bank Limited",style: TextStyle(fontSize: 12),)), value: "Habib Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Standard Chartered Bank (Pakistan) Limited",style: TextStyle(fontSize: 12),)), value: "Standard Chartered Bank (Pakistan) Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Habib Metropolitan Bank Limited",style: TextStyle(fontSize: 12),)), value: "Habib Metropolitan Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Industrial and Commercial Bank of China",style: TextStyle(fontSize: 12),)), value: "Industrial and Commercial Bank of China"),
      DropdownMenuItem(child: FittedBox(child: Text("Industrial Development Bank of Pakistan",style: TextStyle(fontSize: 12),)), value: "Industrial Development Bank of Pakistan"),
      DropdownMenuItem(child: FittedBox(child: Text("JS Bank Limited",style: TextStyle(fontSize: 12),)), value: "JS Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("MCB Bank Limited",style: TextStyle(fontSize: 12),)), value: "MCB Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("MCB Islamic Bank Limited",style: TextStyle(fontSize: 12),)), value: "MCB Islamic Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Meezan Bank Limited",style: TextStyle(fontSize: 12),)), value: "Meezan Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("National Bank of Pakistan",style: TextStyle(fontSize: 12),)), value: "National Bank of Pakistan"),
      DropdownMenuItem(child: FittedBox(child: Text("United Bank Limited",style: TextStyle(fontSize: 12),)), value: "United Bank Limited"),
      DropdownMenuItem(child: FittedBox(child: Text("Bank of Punjab",style: TextStyle(fontSize: 12),)), value: "Bank of Punjabd"),
      DropdownMenuItem(child: FittedBox(child: Text("Silk Bank",style: TextStyle(fontSize: 12),)), value: "Silk Bank"),
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
                  contentPadding:const
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

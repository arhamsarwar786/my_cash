import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';


import '../Utils/constant.dart';
import '../controllers/image_picker_controller.dart';
import 'Certification center/certification_center.dart';
import 'Certification center/Mobile or Bank/mobile_bank.dart';
import 'FAQ.dart';
import 'contact_us.dart';
import 'privicy_policy.dart';
import 'setting_screen.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  static const _text = [
    'Certification Center',    
    'FAQ',
    'Contact Us',
    'Privacy Policy',
    'Setting',
  ];
  static const _icons = [
    Icons.manage_accounts,    
    Icons.help_center,
    Icons.contacts,
    Icons.policy_outlined,
    Icons.settings,
  ];
  static final _navigationSc = [
    Certifiction(),    
    FAQ(),
    ContactUs(),
    PrivicyPolicy(),
    SettingScreen(),
  ];


  @override
  void initState() {
    
    super.initState();
  getImage();
  }

  getImage()async{
    
  if(GlobalState.userDetails != null){    
    if(GlobalState.userDetails!.selfieImg != null){
     fileImage =await decodeImageBase64(GlobalState.userDetails!.selfieImg!);
     setState(() {
       
     });
    } 

  }
  }

  var fileImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image:  DecorationImage(
                        image: AssetImage("assets/images/bgimage.png"),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          iconSize: 25,
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                    
                      ],
                    ),
                    fileImage != null ?
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey,                      
                      backgroundImage:   MemoryImage(fileImage)
                    ) :
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey,                      
                      backgroundImage:   AssetImage("assets/images/person.jpg")
                    ),
                    SizedBox(
                      height: 15,
                    ),
                        Text(
                          GlobalState.userDetails == null ? 'USER' :  GlobalState.userDetails!.fullName ?? 'USER'  ,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${FirebaseAuth.instance.currentUser!.phoneNumber}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.12,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: _text.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 3),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        _navigationSc[index]));
                              },
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          _icons[index],
                                          color: kprimayColor,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(_text[index],
                                            style: TextStyle(
                                              color: primayColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

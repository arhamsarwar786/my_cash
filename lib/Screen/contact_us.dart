import 'dart:ffi';

import 'package:flutter/material.dart';
import '/Utils/constant.dart';
import '/widgets.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainScreenAppBarPush(context, "Contact Us"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/mail.png"),
                      fit: BoxFit.contain)),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 10,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kprimayColor),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Customer Service Hotline",
                          style: TextStyle(
                              color: primayColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.headset_mic,
                              color: primayColor,
                            ),
                            Text(
                              "+923062865703",
                              style: TextStyle(
                                  color: primayColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: primayColor,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Mon to Sat",
                                  style: TextStyle(
                                      color: primayColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: primayColor,
                                ),
                                Text(
                                  "10:00 to 06:00",
                                  style: TextStyle(
                                      color: primayColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Card(
                  shadowColor: primayColor,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: primayColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "+923062865703",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            child: Image(
                              image: AssetImage("assets/images/whatsapp.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}

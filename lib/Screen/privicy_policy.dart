import 'package:flutter/material.dart';

import '../Utils/constant.dart';
import '../widgets.dart';


class PrivicyPolicy extends StatefulWidget {
  const PrivicyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivicyPolicy> createState() => _PrivicyPolicyState();
}

class _PrivicyPolicyState extends State<PrivicyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "Privacy Policy"),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "This Privacy Policy (the “Policy”) for Cash Point users is to be read with and used with the Cash Point Terms and Conditions. All capitalized terms used in this Policy, unless specifically defined herein or the context requires otherwise, shall have the meanings given to them in the Cash Point Terms and Conditions.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: primayColor, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "References below to “you” or “customer” shall mean any visitor, user, business partner, agent, supplier, vendor or customer of Cash Point or any Cash Point Platform and shall include a “User”. References to “we” or “us” shall mean “Cash Point”.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: primayColor, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cash Point is committed to protecting and respecting your privacy. This Policy has been formulated to assist you to understand how your personal information will be collected, stored and processed by Cash Point when you visit the Cash Point website or use any other Cash Point Platform.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: primayColor, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cash Point may amend this Policy from time to time, with or without prior notice. Users and visitors to our website are advised to check this Policy on regular basis to keep up to date with any changes made hereto.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: primayColor, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1. When this Policy applies",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1.1",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "This Policy applies when you use or subscribe to Cash Point’s products, services, applications, websites or networks to which this Policy is linked. This includes data, video, advertising, internet and other products, services and applications. This Policy also applies to other websites owned or operated by Cash Point.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1.2",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "This Policy also applies to you and anyone who uses our products or services under your account, except where we identify that a separate privacy policy or terms and conditions apply. You are responsible for making sure you understand this Policy.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1.3",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'You must agree to and be willing to accept the terms of this Policy before you may visit or use any Cash Point Platform, or any products or services offered therein.',
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1.4",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Depending on the product or services, you may also receive service-specific and/or region-specific terms. You will be legally bound by both this Policy and the service/region specific term to the extent that you have accepted them when signing up to any service or product; therefore, you are required to read these terms carefully.',
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Terms and Conditions",
                    style: TextStyle(
                        color: primayColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The Agreement ",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "1.1",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "These terms and conditions (the “Conditions”) constitute a legally binding agreement (the “Agreement”) between Cash Point and the User (each as defined below). This Agreement shall become effective upon a User creating a user account on any Cash Point Platform.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1.2",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "A User may not create a user account without accepting and agreeing to be bound by this Agreement. These Conditions shall apply in addition to the “General Terms and Conditions” for operating or creating a User account with Cash Point.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Acceptance of Terms by Cash Point ",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2.1",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "All use of Cash Point services and products, and the terms of access and usage of any Cash Point Platform are subject to the terms and conditions set forth below. Access to or use of any Cash Point services or products via any Cash Point Platform constitutes the User’s acceptance of, and agreement to abide and be bound by, these Conditions (whether or not expressly accepted). The User, by creating a user account, signing up for any services or otherwise using or availing any services or products on any Cash Point Platform, shall be deemed to have read, understood and agreed to be bound by these Conditions.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2.2",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cash Point may amend these Conditions at any time without prior notice by posting the amended terms and conditions on its website or by updating the terms of its mobile application or other Cash Point Platform (as the case may be). Such revised or updated terms and conditions shall become effective at the time they are notified or uploaded on the Cash Point Platform, provided that failure to make or receive such notification shall not invalidate any such changes.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2.3",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The User shall be required to accept such revised or updated terms and conditions in order to continue to avail any services or products from Cash Point.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2.4",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "If the User does not accept or agree to be bound by these Conditions, Cash Point shall be entitled to: (i) immediately terminate this Agreement, (ii) discontinue or suspend providing you any services, (iii) deny you access to the Cash Point Platform; and/or (iv) exercise any other remedy it may deem appropriate. Such termination of this Agreement, discontinuation or suspension of any services or denial of access shall be without prejudice to all rights, titles and interests of Cash Point which have arisen or accrued against you prior to such action.",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“Applicable Laws” means all statutes, ordinances, regulations, rules or orders of any kind whatsoever of any Governmental or regulatory authority that may be in effect from time to time and applicable to the relevant activities contemplated by this Agreement.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“Due Date” means the date on which any amounts, including any loan, interest charges or other charges, costs, fees, service fees and expenses, become due and payable by the User to Cash Point.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“Finance” means any form of finance permitted to be provided by Cash Point in accordance with the terms of its license and the terms of any Applicable Laws, which may from time to time be made available by Cash Point via a Cash Point Platform on such terms and in such amounts as shall be determined by Cash Point in its absolute discretion after a User makes a formal application.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“Cash Point” is the business or trade name used by “SeedCred Financial Services Limited”, a non-banking finance company duly licensed by the Securities and Exchange Commission of Pakistan as an investment finance company.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Cash Point Platform” means the website, web portal, mobile application or any other user interface through which Cash Point may offer Finance or Services to Users.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“General Terms and Conditions” means the terms and conditions for creating, maintaining and utilizing a User account with Cash Point, as such terms and conditions may be amended or replaced by Cash Point from time to time.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“Services” means any ancillary services availed by a User from Cash Point other than the provision of any Finance.“Cash Point” and the “User” shall together be referred to as the and where the context requires individually as a ",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "“Intellectual Property” means patents (including reissues, divisions, continuations and extensions thereof), utility models, registered and unregistered designs, copyrights, database rights, registered and unregistered trademarks, trade names and any other form of protection afforded by law to inventions, marks, models, designs, software, goodwill, trade secrets or information (including technical or confidential information), in any form, and applications thereof, and shall include without limitation, any inventions, discoveries, formulas, know-how, processes, business methods, patents (including reissues, divisions, continuations and extensions thereof), utility models, registered and unregistered designs, copyrights, database rights, registered and unregistered service marks, trademarks, trade names and any other form of protection afforded by law to inventions, marks, models, designs, software, source codes, software code (regardless of its form), user documentation, technical documentation, data, carriers of data and/or software, plans, goodwill, trade secrets or information (including technical or confidential information), in any form, improvements and/or applications, and deprecated or future versions thereof.",
                  style: TextStyle(
                      color: primayColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

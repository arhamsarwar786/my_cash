// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_contacts/flutter_contacts.dart';
// import 'package:my_cash/Utils/constant.dart';

// import '../../../models/userDetailModel.dart';

// class ContactsList extends StatefulWidget {
//   @override
//   State<ContactsList> createState() => _ContactsListState();
// }

// class _ContactsListState extends State<ContactsList> {
//   @override
//   void initState() {
//     super.initState();
//     fetchContacts();
//   }

//   var contacts;

//   fetchContacts() async {
//     if (await FlutterContacts.requestPermission()) {
//       // contacts = await FlutterContacts.getContacts();
//       contacts = await FlutterContacts.getContacts(
//         withProperties: true
//       );

//       // print(contacts);
//     } else {
//       contacts = await FlutterContacts.getContacts(
//         withProperties: true
//       );
//     }
//     setState(() {});
//   }

//   List searchresult = [];

//   bool isSearch = false;

//   var contact;

//   var query = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       appBar: isSearch
//           ? AppBar(
//               leading: IconButton(
//                   onPressed: () {
//                     if (isSearch) {
//                       setState(() {
//                         isSearch = false;
//                       });
//                     }
//                   },
//                   icon: Icon(
//                     Icons.arrow_back_sharp,
//                     color: Colors.black,
//                   )),
//               backgroundColor: Colors.white,
//               title: Container(
//                 color: Colors.white,
//                 child: TextField(
//                   // onChanged: (searchText) {
//                   //   // searchresult.clear();
//                   //   if (searchText != null) {
//                   //     for (var i = 0; i < contacts.length; i++) {
//                   //       if (contacts[i].displayName.toLowerCase() ==
//                   //           searchText.toLowerCase()) {
//                   //         setState(() {
//                   //           searchresult.add(contacts[i]);
//                   //         });
//                   //       }
//                   //     }
//                   //     print(searchresult);
//                   //   }
//                   // },
//                   // controller: query,
//                   decoration: InputDecoration.collapsed(
//                     fillColor: Colors.white,
//                     hintText: "Search...",
//                   ),
//                 ),
//               ),
//             )
//           : AppBar(
//               title: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Select Contact",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     "${contacts == null ? '0' :  contacts.length} contacts",
//                     style: TextStyle(
//                       fontSize: 13,
//                     ),
//                   ),
//                 ],
//               ),
//               centerTitle: false,
//               backgroundColor: kprimayColor,
//               actions: <Widget>[
//                 // IconButton(
//                 //   onPressed: () {
//                 //     setState(() {
//                 //       isSearch = true;
//                 //     });
//                 //   },
//                 //   icon: Icon(Icons.search),
//                 // ),
//                 // IconButton(
//                 //   onPressed: () {},
//                 //   icon: Icon(Icons.more_vert),
//                 // ),
//               ],
//             ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: contacts == null
//             ? Center(
//                 child: CircularProgressIndicator(
//                 color: kprimayColor,
//               ))
//             : contacts.isEmpty
//                 ? Center(child: Text("No Contacts Found"))
//                 : ListView.builder(
//                     itemCount: contacts.length,
//                     shrinkWrap: true,
//                     itemBuilder: (context, i) {
//                       return contacts[i].phones.isEmpty
//                           ? Container()
//                           : Container(
//                               // height: 50,
//                               child: ListTile(
//                                   onTap: () {
//                                     contact = {
//                                       "name": contacts[i].displayName,
//                                       "number": contacts[i].phones[0].number,
//                                       "relationship": 'friend',
//                                     };
//                                     // print(contact);
//                                     Navigator.pop(context, contact);
//                                   },
//                                   leading: CircleAvatar(
//                                     backgroundColor: primayColor,
//                                     child: Text(
//                                       contacts[i].displayName[0],
//                                       style: TextStyle(
//                                           fontSize: 30, color: kprimayColor),
//                                     ),
//                                   ),
//                                   title: Text(
//                                     contacts[i].displayName,
//                                     style: TextStyle(
//                                         overflow: TextOverflow.ellipsis),
//                                   ),
//                                   subtitle: Text(
//                                       contacts[i].phones[0].number.toString()),
//                                   trailing: Text(
//                                       contacts[i].phones[0].normalizedNumber)),
//                             );
//                     }),
//       ),
//     );
//   }
// }

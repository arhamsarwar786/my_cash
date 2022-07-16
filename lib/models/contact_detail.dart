// To parse this JSON data, do
//
//     final contactDetail = contactDetailFromJson(jsonString);

import 'dart:convert';

ContactDetail contactDetailFromJson(String str) => ContactDetail.fromJson(json.decode(str));

String contactDetailToJson(ContactDetail data) => json.encode(data.toJson());

class ContactDetail {
    ContactDetail({
        this.relation,
        this.name,
        this.number,
    });

    String? relation;
    String? name;
    String? number;

    factory ContactDetail.fromJson(Map<String, dynamic> json) => ContactDetail(
        relation: json["relation"],
        name: json["name"],
        number: json["number"],
    );

    Map<String, dynamic> toJson() => {
        "relation": relation,
        "name": name,
        "number": number,
    };
}

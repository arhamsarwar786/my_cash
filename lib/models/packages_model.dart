// To parse this JSON data, do
//
//     final packagesModel = packagesModelFromJson(jsonString);

import 'dart:convert';

List<PackagesModel> packagesModelFromJson(String str) => List<PackagesModel>.from(json.decode(str).map((x) => PackagesModel.fromJson(x)));

String packagesModelToJson(List<PackagesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PackagesModel {
    PackagesModel({
        this.packageName,
        this.packageAmount,
        this.interestAmount,
        this.duration,
        this.description,
    });

    String? packageName;
    String? packageAmount;
    String? interestAmount;
    String? duration;
    String? description;

    factory PackagesModel.fromJson(Map<String, dynamic> json) => PackagesModel(
        packageName: json["package_name"],
        packageAmount: json["package_amount"],
        interestAmount: json["interest_amount"],
        duration: json["duration"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "package_name": packageName,
        "package_amount": packageAmount,
        "interest_amount": interestAmount,
        "duration": duration,
        "description": description,
    };
}

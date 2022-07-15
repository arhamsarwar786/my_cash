// To parse this JSON data, do
//
//     final postPackageModel = postPackageModelFromJson(jsonString);

import 'dart:convert';

PostPackageModel postPackageModelFromJson(String str) => PostPackageModel.fromJson(json.decode(str));

String postPackageModelToJson(PostPackageModel data) => json.encode(data.toJson());

class PostPackageModel {
    PostPackageModel({
        this.packageId,
        this.userId,
        this.userName,
        this.packageName,
        this.amount,
        this.interestAmount,
        this.duration,
    });

    String? packageId;
    String? userId;
    String? userName;
    String? packageName;
    String? amount;
    String? interestAmount;
    String? duration;

    factory PostPackageModel.fromJson(Map<String, dynamic> json) => PostPackageModel(
        packageId: json["packageId"],
        userId: json["userId"],
        userName: json["userName"],
        packageName: json["packageName"],
        amount: json["amount"],
        interestAmount: json["interestAmount"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "packageId": packageId,
        "userId": userId,
        "userName": userName,
        "packageName": packageName,
        "amount": amount,
        "interestAmount": interestAmount,
        "duration": duration,
    };
}

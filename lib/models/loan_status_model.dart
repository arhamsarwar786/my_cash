// To parse this JSON data, do
//
//     final loanStatusModel = loanStatusModelFromJson(jsonString);

import 'dart:convert';

List<LoanStatusModel> loanStatusModelFromJson(String str) => List<LoanStatusModel>.from(json.decode(str)!.map((x) => LoanStatusModel.fromJson(x)));

String loanStatusModelToJson(List<LoanStatusModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoanStatusModel {
    LoanStatusModel({
        this.userCnic,
        this.userName,
        this.pakacgeId,
        this.packageName,
        this.amount,
        this.interestAmount,
        this.duration,
        this.status,
    });

    String? userCnic;
    String? userName;
    String? pakacgeId;
    String? packageName;
    String? amount;
    String? interestAmount;
    String? duration;
    String? status;

    factory LoanStatusModel.fromJson(Map<String, dynamic> json) => LoanStatusModel(
        userCnic: json["user_cnic"],
        userName: json["user_name"],
        pakacgeId: json["pakacge_id"] == null ? null : json["pakacge_id"],
        packageName: json["package_name"],
        amount: json["amount"],
        interestAmount: json["interest_amount"],
        duration: json["duration"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "user_cnic": userCnic,
        "user_name": userName,
        "pakacge_id": pakacgeId == null ? null : pakacgeId,
        "package_name": packageName,
        "amount": amount,
        "interest_amount": interestAmount,
        "duration": duration,
        "status": status,
    };
}

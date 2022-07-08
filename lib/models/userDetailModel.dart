// To parse this JSON data, do
//
//     final userDetailModel = userDetailModelFromJson(jsonString);

import 'dart:convert';

List<UserDetailModel> userDetailModelFromJson(String str) => List<UserDetailModel>.from(json.decode(str).map((x) => UserDetailModel.fromJson(x)));

String userDetailModelToJson(List<UserDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDetailModel {
    UserDetailModel({
        this.firstName,
        this.lastName,
        this.fullName,
        this.phoneNumber,
        this.gender,
        this.martialStatus,
        this.province,
        this.city,
        this.address,
        this.dob,
        this.cnic,
        this.cnicFrontImg,
        this.cnicBackImg,
        this.selfieImg,
        this.mobileWalletType,
        this.mobileAccountNumber,
        this.bankName,
        this.accountNumber,
        this.branchCode,

        this.income,
        this.designation,
        this.companyName,
        this.companyAddress,
        this.companyTelephone,
        this.isMobile

    });

    String? firstName;
    String? lastName;
    String? fullName;
    String? phoneNumber;
    String? gender;
    String? martialStatus;
    String? province;
    String? city;
    String? address;
    String? dob;
    String? cnic;
    String? cnicFrontImg;
    String? cnicBackImg;
    String? selfieImg;
    String? mobileWalletType;
    String? mobileAccountNumber;
    String? bankName;
    String? accountNumber;
    String? branchCode;

    String? income;
    String? designation;
    String? companyName;
    String? companyAddress;
    String? companyTelephone;
    String? isMobile;
    

    factory UserDetailModel.fromJson(Map<String, dynamic> json) => UserDetailModel(
        firstName: json["firstName"] == null ? null : json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        gender: json["gender"] == null ? null : json["gender"],
        martialStatus: json["martialStatus"] == null ? null : json["martialStatus"],
        province: json["province"] == null ? null : json["province"],
        city: json["city"] == null ? null : json["city"],
        address: json["address"] == null ? null : json["address"],
        dob: json["dob"] == null ? null : json["dob"],
        cnic: json["cnic"] == null ? null : json["cnic"],
        cnicFrontImg: json["cnicFrontImg"] == null ? null : json["cnicFrontImg"],
        cnicBackImg: json["cnicBackImg"] == null ? null : json["cnicBackImg"],
        selfieImg: json["selfieImg"] == null ? null : json["selfieImg"],
        mobileWalletType: json["mobileWalletType"] == null ? null : json["mobileWalletType"],
        mobileAccountNumber: json["mobileAccountNumber"] == null ? null : json["mobileAccountNumber"],
        bankName: json["bankName"] == null ? null : json["bankName"],
        accountNumber: json["accountNumber"] == null ? null : json["accountNumber"],
        branchCode: json["branchCode"] == null ? null : json["branchCode"],

        income: json["income"] == null ? null : json["income"],
        designation: json["designation"] == null ? null : json["designation"],
        companyName: json["companyName"] == null ? null : json["companyName"],
        companyAddress: json["companyAddress"] == null ? null : json["companyAddress"],
        companyTelephone: json["companyTelephone"] == null ? null : json["companyTelephone"],
        isMobile: json["isMobile"] == null ? null : json["isMobile"],

    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "fullName": fullName == null ? null : fullName,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "gender": gender == null ? null : gender,
        "martialStatus": martialStatus == null ? null : martialStatus,
        "province": province == null ? null : province,
        "city": city == null ? null : city,
        "address": address == null ? null : address,
        "dob": dob == null ? null : dob,
        "cnic": cnic == null ? null : cnic,
        "cnicFrontImg": cnicFrontImg == null ? null : cnicFrontImg,
        "cnicBackImg": cnicBackImg == null ? null : cnicBackImg,
        "selfieImg": selfieImg == null ? null : selfieImg,
        "mobileWalletType": mobileWalletType == null ? null : mobileWalletType,
        "mobileAccountNumber": mobileAccountNumber == null ? null : mobileAccountNumber,
        "bankName": bankName == null ? null : bankName,
        "accountNumber": accountNumber == null ? null : accountNumber,
        "branchCode": branchCode == null ? null : branchCode,

        "income": income == null ? null : income,
        "designation": designation == null ? null : designation,
        "companyName": companyName == null ? null : companyName,
        "companyAddress": companyAddress == null ? null : companyAddress,
        "companyTelephone": companyTelephone == null ? null : companyTelephone,
        "isMobile": isMobile == null ? null : isMobile,

    };
}

// To parse this JSON data, do
//
//     final userDetailModel = userDetailModelFromJson(jsonString);

import 'dart:convert';

UserDetailModel userDetailModelFromJson(String str) => UserDetailModel.fromJson(json.decode(str));

String userDetailModelToJson(UserDetailModel data) => json.encode(data.toJson());

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
        this.isMobile,
        
        this.education,
        this.recordingTime,
        this.deviceName,
        this.equipmentSystem,
        this.deviceSerialNumber,
        this.systemVersion,
        this.equipmentModel,
        this.secondaryContacts,
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
    String? education;
    String? recordingTime;
    String? deviceName;
    String? equipmentSystem;
    String? deviceSerialNumber;
    String? systemVersion;
    String? equipmentModel;
    String? secondaryContacts;
    // String? secondaryContacts;

    factory UserDetailModel.fromJson(Map<String, dynamic> json) => UserDetailModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        phoneNumber: json["phoneNumber"],
        gender: json["gender"],
        martialStatus: json["martialStatus"],
        province: json["province"],
        city: json["city"],
        address: json["address"],
        dob: json["dob"],
        cnic: json["cnic"],
        cnicFrontImg: json["cnicFrontImg"],
        cnicBackImg: json["cnicBackImg"],
        selfieImg: json["selfieImg"],
        mobileWalletType: json["mobileWalletType"],
        mobileAccountNumber: json["mobileAccountNumber"],
        bankName: json["bankName"],
        accountNumber: json["accountNumber"],
        branchCode: json["branchCode"],
        income: json["income"],
        designation: json["designation"],
        companyName: json["companyName"],
        companyAddress: json["companyAddress"],
        companyTelephone: json["companyTelephone"],
        isMobile: json["isMobile"],
        education: json["education"],
        recordingTime: json["recordingTime"],
        deviceName: json["deviceName"],
        equipmentSystem: json["equipmentSystem"],
        deviceSerialNumber: json["deviceSerialNumber"],
        systemVersion: json["systemVersion"],
        equipmentModel: json["equipmentModel"],
        secondaryContacts: json["secondaryContacts"] ,
        // secondaryContacts: "",
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "fullName": fullName,
        "phoneNumber": phoneNumber,
        "gender": gender,
        "martialStatus": martialStatus,
        "province": province,
        "city": city,
        "address": address,
        "dob": dob,
        "cnic": cnic,
        "cnicFrontImg": cnicFrontImg,
        "cnicBackImg": cnicBackImg,
        "selfieImg": selfieImg,
        "mobileWalletType": mobileWalletType,
        "mobileAccountNumber": mobileAccountNumber,
        "bankName": bankName,
        "accountNumber": accountNumber,
        "branchCode": branchCode,
        "income": income,
        "designation": designation,
        "companyName": companyName,
        "companyAddress": companyAddress,
        "companyTelephone": companyTelephone,
        "isMobile": isMobile,
        "education": education,
        "recordingTime": recordingTime,
        "deviceName": deviceName,
        "equipmentSystem": equipmentSystem,
        "deviceSerialNumber": deviceSerialNumber,
        "systemVersion": systemVersion,
        "equipmentModel": equipmentModel,
        // "secondaryContacts": "",
        "secondaryContacts": secondaryContacts,
    };
}

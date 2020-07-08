// To parse this JSON data, do
//
//     final pawned = pawnedFromJson(jsonString);

import 'dart:convert';

List<Pawned> pawnedFromJson(String str) => List<Pawned>.from(json.decode(str).map((x) => Pawned.fromJson(x)));

String pawnedToJson(List<Pawned> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pawned {
  Pawned({
    this.name,
    this.title,
    this.domain,
    this.breachDate,
    this.addedDate,
    this.modifiedDate,
    this.pwnCount,
    this.description,
    this.logoPath,
    this.dataClasses,
    this.isVerified,
    this.isFabricated,
    this.isSensitive,
    this.isRetired,
    this.isSpamList,
  });

  String name;
  String title;
  String domain;
  DateTime breachDate;
  DateTime addedDate;
  DateTime modifiedDate;
  int pwnCount;
  String description;
  String logoPath;
  List<String> dataClasses;
  bool isVerified;
  bool isFabricated;
  bool isSensitive;
  bool isRetired;
  bool isSpamList;

  factory Pawned.fromJson(Map<String, dynamic> json) => Pawned(
    name: json["Name"],
    title: json["Title"],
    domain: json["Domain"],
    breachDate: DateTime.parse(json["BreachDate"]),
    addedDate: DateTime.parse(json["AddedDate"]),
    modifiedDate: DateTime.parse(json["ModifiedDate"]),
    pwnCount: json["PwnCount"],
    description: json["Description"],
    logoPath: json["LogoPath"],
    dataClasses: List<String>.from(json["DataClasses"].map((x) => x)),
    isVerified: json["IsVerified"],
    isFabricated: json["IsFabricated"],
    isSensitive: json["IsSensitive"],
    isRetired: json["IsRetired"],
    isSpamList: json["IsSpamList"],
  );

  Map<String, dynamic> toJson() => {
    "Name": name,
    "Title": title,
    "Domain": domain,
    "BreachDate": "${breachDate.year.toString().padLeft(4, '0')}-${breachDate.month.toString().padLeft(2, '0')}-${breachDate.day.toString().padLeft(2, '0')}",
    "AddedDate": addedDate.toIso8601String(),
    "ModifiedDate": modifiedDate.toIso8601String(),
    "PwnCount": pwnCount,
    "Description": description,
    "LogoPath": logoPath,
    "DataClasses": List<dynamic>.from(dataClasses.map((x) => x)),
    "IsVerified": isVerified,
    "IsFabricated": isFabricated,
    "IsSensitive": isSensitive,
    "IsRetired": isRetired,
    "IsSpamList": isSpamList,
  };
}

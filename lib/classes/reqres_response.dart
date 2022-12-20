// To parse this JSON data, do
//
//     final reqResResponse = reqResResponseFromMap(jsonString);

import 'dart:convert';

import 'package:packages/classes/person.dart';

class ReqResResponse {
  ReqResResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Person> data;

  factory ReqResResponse.fromJson(String str) =>
      ReqResResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ReqResResponse.fromMap(Map<String, dynamic> json) => ReqResResponse(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Person>.from(json["data"].map((x) => Person.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

import 'dart:convert';

class Flags {
  String svg;
  String png;

  Flags({
    required this.svg,
    required this.png,
  });

  factory Flags.fromJson(String str) => Flags.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Flags.fromMap(Map<String, dynamic> json) => Flags(
        svg: json["svg"],
        png: json["png"],
      );

  Map<String, dynamic> toMap() => {
        "svg": svg,
        "png": png,
      };
}

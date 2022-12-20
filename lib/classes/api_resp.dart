// To parse this JSON data, do
//
//     final apiResponseColombia = apiResponseColombiaFromMap(jsonString);

import 'dart:convert';

import 'package:packages/classes/currency.dart';
import 'package:packages/classes/flag.dart';
import 'package:packages/classes/language.dart';
import 'package:packages/classes/translation.dart';

class Country {
  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String subregion;
  String region;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  Flags flags;
  List<Currency> currencies;
  List<Language> languages;
  Translations translations;
  String flag;
  List<RegionalBloc> regionalBlocs;
  String cioc;
  bool independent;

  Country({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    required this.capital,
    required this.altSpellings,
    required this.subregion,
    required this.region,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.gini,
    required this.timezones,
    required this.borders,
    required this.nativeName,
    required this.numericCode,
    required this.flags,
    required this.currencies,
    required this.languages,
    required this.translations,
    required this.flag,
    required this.regionalBlocs,
    required this.cioc,
    required this.independent,
  });

  factory Country.fromJson(String str) => Country.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Country.fromMap(Map<String, dynamic> json) => Country(
        name: json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        subregion: json["subregion"],
        region: json["region"],
        population: json["population"],
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        demonym: json["demonym"],
        area: json["area"],
        gini: json["gini"].toDouble(),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: Flags.fromMap(json["flags"]),
        currencies: List<Currency>.from(
            json["currencies"].map((x) => Currency.fromMap(x))),
        languages: List<Language>.from(
            json["languages"].map((x) => Language.fromMap(x))),
        translations: Translations.fromMap(json["translations"]),
        flag: json["flag"],
        regionalBlocs: List<RegionalBloc>.from(
            json["regionalBlocs"].map((x) => RegionalBloc.fromMap(x))),
        cioc: json["cioc"],
        independent: json["independent"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": List<dynamic>.from(callingCodes.map((x) => x)),
        "capital": capital,
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "subregion": subregion,
        "region": region,
        "population": population,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "gini": gini,
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags.toMap(),
        "currencies": List<dynamic>.from(currencies.map((x) => x.toMap())),
        "languages": List<dynamic>.from(languages.map((x) => x.toMap())),
        "translations": translations.toMap(),
        "flag": flag,
        "regionalBlocs":
            List<dynamic>.from(regionalBlocs.map((x) => x.toMap())),
        "cioc": cioc,
        "independent": independent,
      };
}

class RegionalBloc {
  String acronym;
  String name;
  List<String> otherNames;
  List<String> otherAcronyms;

  RegionalBloc({
    required this.acronym,
    required this.name,
    required this.otherNames,
    required this.otherAcronyms,
  });

  factory RegionalBloc.fromJson(String str) =>
      RegionalBloc.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegionalBloc.fromMap(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
        otherNames: List<String>.from(json["otherNames"].map((x) => x)),
        otherAcronyms: json["otherAcronyms"] == null
            ? []
            : List<String>.from(json["otherAcronyms"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "acronym": acronym,
        "name": name,
        "otherNames": List<dynamic>.from(otherNames.map((x) => x)),
        "otherAcronyms": List<dynamic>.from(otherAcronyms.map((x) => x)),
      };
}

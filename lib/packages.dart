import 'package:http/http.dart' as http;

import 'package:packages/classes/api_resp.dart';

import 'package:packages/classes/reqres_response.dart';

void getReqResService() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');

  http.get(url).then((res) {
    final resReqRes = ReqResResponse.fromJson(res.body);

    // print(res);
    // jsonDecode comes from 'dart:convert'.
    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('perPage: ${body['per_page']}');
    // print('id from third element: ${body['data'][2]['id']}');

    print('page: ${resReqRes.page}');
    print('perPage: ${resReqRes.perPage}');
    print('id from third element: ${resReqRes.data[2].id}');
  });
}

void getCountryInfo() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');

  http.get(url).then((resp) {
    final country = Country.fromJson(resp.body);

    print('===========================');
    print('Country: ${country.name}');
    print('Population: ${country.population}');
    print('Borders:');

    for (String d in country.borders) {
      print('    $d');
    }

    print('Languages: ${country.languages[0].nativeName}');
    print('Lat: ${country.latlng.first}');
    print('Lng: ${country.latlng.last}');
    print('Currency: ${country.currencies[0].name}');
    print('Flag: ${country.flag}');

    print('===========================');
  });
}

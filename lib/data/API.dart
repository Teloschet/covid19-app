import 'package:http/http.dart' as http;
import 'dart:convert';

Future<DadosModel> getDados() async {
  final url = "https://covid-api.mmediagroup.fr/v1/cases";
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonDados = jsonDecode(response.body);
    return DadosModel.fromJson(jsonDados);
  } else {
    throw Exception();
  }
}

class DadosModel {
  final String confirmed;
  final String recovered;
  final String deaths;

  DadosModel(
      {required this.confirmed, required this.recovered, required this.deaths});

  factory DadosModel.fromJson(final json) {
    return DadosModel(
        confirmed: json["confirmed"],
        recovered: json["recovered"],
        deaths: json["deaths"]);
  }
}

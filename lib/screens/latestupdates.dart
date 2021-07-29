import 'package:flutter/material.dart';
import 'package:covid19/constants.dart';
import 'package:intl/intl.dart';
import 'stat.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LatestUpdates extends StatelessWidget {
  final DateTime date;

  const LatestUpdates({required this.date});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMd().format(date);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Covid-19 Latest Update',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    'Last Updated $formattedDate',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(height: 6),
                  Icon(
                    Icons.sync,
                    color: AppColors.grey,
                    size: 16,
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Details'),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stat(
              icon: Icons.add,
              lightColor: AppColors.orangeLight,
              mainColor: AppColors.orange,
              label: 'INFECTED',
              value: 19749073,
            ),
            Stat(
              icon: Icons.favorite,
              lightColor: AppColors.greenLight,
              mainColor: AppColors.green,
              label: 'RECOVERED',
              value: 17737677,
            ),
            Stat(
              icon: Icons.close,
              lightColor: AppColors.redLight,
              mainColor: AppColors.red,
              label: 'DEATH',
              value: 551835,
            ),
          ],
        ),
      ],
    );
  }
}

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

import 'package:flutter/material.dart';
import 'country_selector.dart';
import 'package:covid19/screens/covid_container.dart';
import 'package:covid19/screens/latestupdates.dart';
import 'package:covid19/screens/active_cases.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CountrySelector(
                  date: DateTime.now(),
                ),
                SizedBox(height: 15),
                CovidContainer(),
                SizedBox(height: 15),
                LatestUpdates(
                  date: DateTime.now(),
                ),
                SizedBox(height: 15),
                ActiveCases(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

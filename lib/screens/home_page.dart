import 'package:flutter/material.dart';
import 'country_selector.dart';
import 'package:covid19/screens/covid_container.dart';
import 'package:covid19/screens/latestupdates.dart';
import 'package:covid19/screens/active_cases.dart';
import 'package:covid19/screens/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  void initState() {
    super.initState();

    controller = new HomeController();

    controller.addListener(() {
      setState(() {});
    });
  }

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
                  selectedCountry: controller.country,
                  date: controller.dateTimeNow,
                  onCountrySelect: (c) {
                    controller.updateCountry(c);
                  },
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

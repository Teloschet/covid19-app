import 'package:flutter/material.dart';
import 'cases_chart.dart';

class ActiveCases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active Cases',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('01 JUN - 01 AGO'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: 'Daily'),
              Tab(text: 'Weekly'),
              Tab(text: 'Monthly'),
            ],
          ),
          Container(
            height: 200,
            child: CasesChart(),
          ),
        ],
      ),
    );
  }
}

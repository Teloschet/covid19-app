import 'package:flutter/material.dart';
import 'package:covid19/constants.dart';
import 'package:intl/intl.dart';
import 'stat.dart';

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

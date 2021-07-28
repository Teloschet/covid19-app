import 'package:flutter/material.dart';
import 'package:covid19/constants.dart';
import 'package:intl/intl.dart';

import 'package:covid19/screens/notification.dart';

class CountrySelector extends StatelessWidget {
  final DateTime date;

  const CountrySelector({required this.date});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMd().format(date);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current outbreak',
              style: TextStyle(
                color: AppColors.blackStrong,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Row(
              children: [
                Text(
                  'Brazil',
                  style: TextStyle(
                    color: AppColors.blackStrong,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.grey,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 2),
            Text(
              '$formattedDate',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        NotificationBell(),
      ],
    );
  }
}

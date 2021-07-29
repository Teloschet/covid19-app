import 'package:flutter/material.dart';
import 'package:covid19/constants.dart';

class NotificationBell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications,
          color: AppColors.grey,
          size: 32,
        ),
        Positioned(
          top: 6,
          right: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 8,
              height: 8,
              color: AppColors.red,
            ),
          ),
        )
      ],
    );
  }
}
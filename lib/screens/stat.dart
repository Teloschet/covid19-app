import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  final IconData icon;
  final Color lightColor;
  final Color mainColor;
  final String label;
  final int value;

  const Stat({
    required this.icon,
    required this.lightColor,
    required this.mainColor,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.fromBorderSide(
            BorderSide(
              color: Color(0xFFEEEEEE),
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFEEEEEE),
              offset: Offset(4, 2),
              blurRadius: 4,
            )
          ]),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.circular(50),
              border: Border.fromBorderSide(
                BorderSide(
                  color: mainColor,
                  width: 1,
                ),
              ),
            ),
            child: Icon(
              Icons.add,
              size: 16,
              color: mainColor,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$value',
            style: TextStyle(
              color: mainColor,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

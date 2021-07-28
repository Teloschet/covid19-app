import 'package:flutter/material.dart';
import 'package:covid19/constants.dart';

class CovidContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 130,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: AppColors.bluecovid,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10, left: 85),
                child: Text(
                  'Self Check Up Covid-19',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 13),
                child: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 250,
            margin: const EdgeInsets.only(bottom: 20, left: 40),
            child: Text(
              'Container several list of questions to check your physical coundition.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

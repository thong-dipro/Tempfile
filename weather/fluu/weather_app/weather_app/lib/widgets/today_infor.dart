import 'package:flutter/material.dart';
import 'package:weather_app/res/app_color.dart';

Widget TodayInfor(String cloudy, String temp, String icon, String location) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Center(
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 24,
                    color: AppColors.TextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    location,
                    style: TextStyle(color: AppColors.TextColor, fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Icon(
                  Icons.wb_sunny,
                  size: 32,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(cloudy,
                    style: TextStyle(
                        fontFamily: "GoogleSans",
                        fontSize: 24,
                        color: AppColors.TextColor,
                        fontWeight: FontWeight.w200))
              ],
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              child: Text("$temp°C",
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w100,
                      color: AppColors.bgcolor2)),
            ),
          )
        ],
      ));
}

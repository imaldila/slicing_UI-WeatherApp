import 'package:flutter/material.dart';
import 'package:weather_apps/constants.dart';

import 'components/card_weather.dart';
import 'components/city_header.dart';
import 'components/report_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home-bg.png'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorPadding,
              vertical: kVerPadding,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CityHeader(),
                const SizedBox(
                  height: kPadding,
                ),
                Image.asset('assets/images/sun-cloudy.png'),
                const CardWeather(),
                const Spacer(),
                ReportButton(
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

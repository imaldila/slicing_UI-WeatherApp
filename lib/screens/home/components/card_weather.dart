import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardWeather extends StatelessWidget {
  const CardWeather({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
      width: double.infinity,
      decoration: kBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Today, 14 April 2022',
            style: kTextStyleMap18,
          ),
          Text(
            '29°',
            style: kTextStyleMap100,
          ),
          Text(
            'Cloudy',
            style: kTextStyleMap18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/ic-windy.png'),
              const SizedBox(
                width: kPadding,
              ),
              Text(
                'Wind',
                style: kTextStyleMap18,
              ),
              const SizedBox(
                width: kPadding,
              ),
              Text(
                '10 km/h',
                style: kTextStyleMap18,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/ic-hum.png'),
              const SizedBox(
                width: kPadding,
              ),
              Text(
                'Hum',
                style: kTextStyleMap18,
              ),
              const SizedBox(
                width: kPadding,
              ),
              Text(
                '54 %',
                style: kTextStyleMap18,
              )
            ],
          )
        ],
      ),
    );
  }
}

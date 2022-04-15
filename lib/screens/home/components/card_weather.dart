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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kPadding),
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
              style: kTextStyleMap24,
            ),
            const SizedBox(
              height: kPadding,
            ),
            const WeatherAttribute(
              image: 'assets/icons/ic-windy.png',
              title: 'Wind',
              value: '10 Km/h',
            ),
            const SizedBox(
              height: kPadding / 2,
            ),
            const WeatherAttribute(
              image: 'assets/icons/ic-hum.png',
              title: 'Hun',
              value: '54 %',
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherAttribute extends StatelessWidget {
  const WeatherAttribute({
    Key? key,
    required this.image,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String image, title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(image),
              const SizedBox(
                width: kPadding,
              ),
              Text(
                title,
                style: kTextStyleMap18,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: kPadding,
        ),
        Text(
          '|',
          style: kTextStyleMap18,
        ),
        const SizedBox(
          width: kPadding,
        ),
        Expanded(
          child: Text(
            value,
            style: kTextStyleMap18,
          ),
        ),
      ],
    );
  }
}

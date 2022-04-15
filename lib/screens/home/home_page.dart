import 'package:flutter/material.dart';
import 'package:weather_apps/constants.dart';

import 'components/card_weather.dart';
import 'components/city_header.dart';
import 'components/notification_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                NotificationButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.transparent,
                      elevation: 8,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: size.height / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            border: Border.all(width: 3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kHorPadding,
                              vertical: kVerPadding / 3,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child:
                                      Image.asset('assets/icons/ic-line.png'),
                                ),
                                const SizedBox(
                                  height: kPadding,
                                ),
                                Text(
                                  'Your Notification',
                                  style: kTextStyleMap24Blue,
                                ),
                                const SizedBox(
                                  height: kPadding,
                                ),
                                Text('New', style: kTextStyle18,),
                                Text('data'),
                                Text('data'),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ShowNotification extends StatelessWidget {
  const ShowNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kPadding,
          ),
          Center(
            child: Image.asset('assets/icons/ic-line.png'),
          ),
          const SizedBox(
            height: kPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorPadding,
            ),
            child: Text(
              'Your Notification',
              style: kTextStyleMap24Blue,
            ),
          ),
          const SizedBox(
            height: kPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorPadding,
            ),
            child: Text(
              'New',
              style: kTextStyle14SoftLightBold,
            ),
          ),
          const SizedBox(
            height: kPadding / 2,
          ),
          NotificationInfos(
            icon: 'assets/icons/ic-sun.png',
            times: '10 minutes ago',
            description:
                'A sunny day in your location, consider wearing your UV protection',
            styleTime: kTextStyle12SoftLight,
            styleDescription: kTextStyle14Bold,
          ),
          const SizedBox(
            height: kPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorPadding,
            ),
            child: Text(
              'Earlier',
              style: kTextStyle18Light,
            ),
          ),
          const SizedBox(
            height: kPadding / 2,
          ),
          NotificationInfos(
            icon: 'assets/icons/ic-blue-windy.png',
            times: '1 day ago',
            description:
                'A cloudy day will occur all day long, don\'t worry about the heat of the sun',
            styleTime: kTextStyle12SoftLight,
            styleDescription: kTextStyle14SoftLightBold,
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          NotificationInfos(
            icon: 'assets/icons/ic-raini.png',
            times: '2 day ago',
            description:
                'Potential for rain today is 84%, don\'t forget to bring your umbrella.',
            styleTime: kTextStyle12SoftLight,
            styleDescription: kTextStyle14SoftLightBold,
          ),
        ],
      ),
    );
  }
}

class NotificationInfos extends StatelessWidget {
  const NotificationInfos({
    Key? key,
    required this.icon,
    required this.times,
    required this.description,
    this.styleTime,
    this.styleDescription,
  }) : super(key: key);

  final String icon, times, description;
  final TextStyle? styleTime, styleDescription;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      hoverColor: Colors.blueAccent,
      highlightColor: Colors.red,
      splashColor: Colors.blue,
      onTap: () {
        print('tap');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorPadding,
        ),
        child: Row(
          children: [
            Image.asset(icon),
            const SizedBox(
              width: kPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  times,
                  style: styleTime,
                ),
                const SizedBox(
                  width: kPadding,
                ),
                SizedBox(
                  width: size.width / 1.4,
                  child: Text(
                    description,
                    style: styleDescription,
                  ),
                ),
                const SizedBox(
                  width: kPadding / 2,
                ),
              ],
            ),
            Image.asset('assets/icons/ic-down.png'),
          ],
        ),
      ),
    );
  }
}

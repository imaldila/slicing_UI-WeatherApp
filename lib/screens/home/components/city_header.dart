import 'package:flutter/material.dart';

import '../../../constants.dart';


class CityHeader extends StatelessWidget {
  const CityHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/ic-map.png'),
        const SizedBox(
          width: kPadding,
        ),
        Text(
          'Semarang',
          style: kTextStyleMap24,
        ),
        const SizedBox(
          width: kPadding,
        ),
        Image.asset('assets/icons/ic-opt.png'),
        const Spacer(),
        Image.asset('assets/icons/ic-notif.png')
      ],
    );
  }
}

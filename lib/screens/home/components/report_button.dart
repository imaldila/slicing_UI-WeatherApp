import 'package:flutter/material.dart';

import '../../../constants.dart';

class ReportButton extends StatelessWidget {
  const ReportButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Forecase Report', style: kTextStyle18),
          Image.asset('assets/icons/ic-up.png')
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 8,
        fixedSize: const Size(220, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

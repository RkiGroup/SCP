import 'package:flutter/material.dart';
import 'package:smart_car_parking/size_config.dart';

import '../constants.dart';

class ActionButton extends StatelessWidget {
  final String? text;
  final Function()? onPressed;
  final IconData? icon;
  const ActionButton(
      {@required this.text, @required this.onPressed, @required this.icon});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 50,
      width: SizeConfig.screenWidth! / 1.2,
      child: TextButton(
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )),
          onPressed: onPressed,
          child: Text(
            '$text',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}

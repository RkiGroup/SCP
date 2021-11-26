import 'package:flutter/material.dart';
import 'package:smart_car_parking/constants.dart';

class CustomTitle extends StatelessWidget {
  final String? text;
  const CustomTitle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text('$text'.toUpperCase(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Text('.',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor)),
          ),
        )
      ],
    );
  }
}

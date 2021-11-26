import 'package:flutter/material.dart';
import 'package:smart_car_parking/constants.dart';

class UtilitiesCard extends StatelessWidget {
  final String? imagePath, title;
  final Function()? onPressed;
  const UtilitiesCard(
      {@required this.imagePath, @required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: imagePath != ''
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePath.toString(),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

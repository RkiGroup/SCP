import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

class TileButton extends StatelessWidget {
  final Widget? icon;
  final String? text;
  final Function()? onPressed;
  TileButton(
      {@required this.icon, @required this.text, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        leading: icon,
        title: Text(text.toString()),
        trailing: FaIcon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String? text;
  final Function()? onPressed;
  const CustomButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 45,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.blue[300]!)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )),
    );
  }
}

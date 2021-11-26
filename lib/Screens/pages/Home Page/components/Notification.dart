import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationWidget extends StatelessWidget {
  final String? title, subtitle;
  const NotificationWidget({@required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Badge(
          borderSide: BorderSide(color: Colors.green),
          elevation: 0,
          badgeColor: Colors.white,
          badgeContent:
              FaIcon(Icons.notifications_active_outlined, color: Colors.green),
        ),
        title: Text(
          title.toString(),
        ),
        subtitle: Text('$subtitle'));
  }
}

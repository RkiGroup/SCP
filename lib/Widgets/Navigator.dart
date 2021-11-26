import 'package:flutter/material.dart';

pushAndRemoveUntil(BuildContext context, Widget page) {
  return Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (_) => page), (route) => false);
}

push({@required BuildContext? context, @required Widget? page}) {
  return Navigator.push(context!, MaterialPageRoute(builder: (_) => page!));
}

pop(BuildContext context) {
  return Navigator.pop(context);
}

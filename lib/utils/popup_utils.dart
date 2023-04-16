import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PopupUtils {
  static closeDialog(BuildContext context) {
    context.popRoute();
  }
}

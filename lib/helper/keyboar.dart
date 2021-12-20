import 'package:flutter/cupertino.dart';

// ignore: avoid_classes_with_only_static_members
class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class AppKeyboardUtil {
  static void hide(BuildContext context) {
    FocusScope.of(context).unfocus();
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void show(BuildContext context, FocusNode node) {
    FocusScope.of(context).unfocus();
    Timer(const Duration(milliseconds: 1), () {
      FocusScope.of(context).requestFocus(node);
    });
  }
}

mixin KeyboardDetector<T extends StatefulWidget> on State<T> {
  StreamSubscription<bool>? _keyboardSubscription;
  bool isKeyboardOn = false;
  final bool useDefaultKeyboardDetectorInit = true;

  @override
  void initState() {
    if (useDefaultKeyboardDetectorInit) {
      initKeyboardDetector();
    }
    super.initState();
  }

  @override
  void dispose() {
    disposeKeyboardDetector();
    super.dispose();
  }

  void initKeyboardDetector({
    Function(double keyboardHeight)? willShowKeyboard,
    Function()? willHideKeyboard,
  }) {
    final keyboardVisibilityController = KeyboardVisibilityController();

    _keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
          if (!mounted) return;

          if (visible) {
            final keyboardHeight =
                MediaQuery.of(context).viewInsets.bottom;

            if (willShowKeyboard != null) {
              willShowKeyboard(keyboardHeight);
            }

            setState(() {
              isKeyboardOn = true;
            });
          } else {
            if (willHideKeyboard != null) {
              willHideKeyboard();
            }

            setState(() {
              isKeyboardOn = false;
            });
          }
        });
  }

  void disposeKeyboardDetector() {
    _keyboardSubscription?.cancel();
    _keyboardSubscription = null;
  }
}

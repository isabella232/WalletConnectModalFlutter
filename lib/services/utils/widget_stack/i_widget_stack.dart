import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class IWidgetStack with ChangeNotifier {
  abstract final ValueListenable<Widget> current;

  /// Returns the current widget.
  Widget getCurrent();

  /// Pushes a widget to the stack.
  void add(Widget widget);

  /// Removes a widget from the stack.
  void pop();

  /// Removes widgets from the stack until the given type of widget is found.
  void popUntil(Key key);

  /// Checks if the stack contains a widget with the given key.
  bool containsKey(Key key);
}

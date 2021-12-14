import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class RouteHandlers {
  static Handler staticPageHandler(Widget screen) {
    return Handler(
      handlerFunc: (context, params) {
        return screen;
      },
    );
  }
}

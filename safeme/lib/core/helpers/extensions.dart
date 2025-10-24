import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeNmae, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeNmae, arguments: arguments);
  }

  Future<dynamic> pushReplacement(String routeNmae, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeNmae, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoved(
    String routeNmae, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeNmae, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

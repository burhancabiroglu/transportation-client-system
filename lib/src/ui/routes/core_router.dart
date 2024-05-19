import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoreRouter {
  final GlobalKey<NavigatorState> key;

  const CoreRouter._({required this.key});


  static CoreRouter main = CoreRouter._(key: GlobalKey());
  static CoreRouter bottomNavBar = CoreRouter._(key: GlobalKey());

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    final context = key.currentContext;
    if(context == null) return Future.error("context not fount");
    return Navigator.of(context).pushNamed<T>(routeName,arguments: arguments);
  }

  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    final context = key.currentContext;
    if(context == null) return Future.error("context not fount");
    return Navigator.of(context).popAndPushNamed(routeName, arguments: arguments,result: result);
  }  

  void pop<T extends Object?>([ T? result ]) {
    final context = key.currentContext;
    if(context == null) return;
    return Navigator.of(context).pop();
  } 
}



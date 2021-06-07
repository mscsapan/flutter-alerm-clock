import 'package:flutter/material.dart';

class ScreenAnimation extends PageRouteBuilder {
  final Widget widget;

  ScreenAnimation({this.widget})
      : super(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> fAnimation,
                Animation<double> secAnimation,
                Widget wChild) {
              fAnimation =
                  CurvedAnimation(parent: fAnimation, curve: Curves.fastOutSlowIn);

              return ScaleTransition(
                scale: fAnimation,
                alignment: Alignment.center,
                child: wChild,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> fAnimation,
                Animation<double> secAnimation) {
              return widget;
            });
}

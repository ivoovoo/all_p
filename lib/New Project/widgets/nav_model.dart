import 'package:flutter/cupertino.dart';

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel({
    required this.navKey,
    required this.page,
  });
}
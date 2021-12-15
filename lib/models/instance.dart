import 'package:flutter/cupertino.dart';

class InstanceClass {
  String className;
  String classSubtitle;
  String classImage;
  Icon classIcon;
  List<InstanceClass> subcategories;

  InstanceClass({
    required this.className,
    required this.classSubtitle,
    required this.classImage,
    required this.classIcon,
    required this.subcategories,
  });
}

import 'package:flutter/material.dart';
import 'package:kokovest/models/instance.dart';

class SubCategory extends InstanceClass {
  SubCategory({
    required String className,
    required String classSubtitle,
    required String classImage,
    required Icon classIcon,
    required List<InstanceClass> subcategories,
  }) : super(
            classIcon: classIcon,
            classSubtitle: classSubtitle,
            classImage: classImage,
            className: className,
            subcategories: subcategories);
}

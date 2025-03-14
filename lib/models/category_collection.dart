import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Icons;
import 'package:reminder/models/category.dart';

import '../common/widgets/category_icon.dart';

class CategoryCollection {
  final List<MyCategory> _categories = [
    MyCategory(
      id: "today",
      name: "today",
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemBlue,
        iconData: CupertinoIcons.calendar_today,
      ),
    ),
    MyCategory(
      id: "schedule",
      name: "schedule",
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemRed,
        iconData: CupertinoIcons.calendar,
      ),
    ),
    MyCategory(
      id: "all",
      name: "all",
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemGrey,
        iconData: Icons.inbox_rounded,
      ),
    ),
    MyCategory(
      id: "flag",
      name: "flag",
      icon: CategoryIcon(
        bgColor: CupertinoColors.systemOrange,
        iconData: CupertinoIcons.flag_fill,
      ),
    ),
  ];
  UnmodifiableListView<MyCategory> get categories =>
      UnmodifiableListView(_categories);
  MyCategory removeItem(index) {
    return _categories.removeAt(index);
  }

  void insertItem(index, element) {
    _categories.insert(index, element);
  }

  List<MyCategory> selectedCategory() {
    return _categories.where((category) => category.isChecked).toList();
  }
}

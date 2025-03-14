import 'package:reminder/common/widgets/category_icon.dart';

class MyCategory {
  String id;
  String name;
  bool isChecked;
  final CategoryIcon icon;

  MyCategory({
    required this.icon,
    required this.id,
    required this.name,
    this.isChecked = true,
  });
  void toggleIsChecked() {
    isChecked = !isChecked;
  }
}

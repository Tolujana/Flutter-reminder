import 'package:flutter/material.dart';
import 'package:reminder/models/category.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({required this.categories});

  final List<MyCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 16 / 9,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children:
            categories
                .map(
                  (category) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFc00060),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [category.icon, Text('0')],
                          ),
                          Text(category.name),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}

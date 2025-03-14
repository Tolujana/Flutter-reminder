import 'package:flutter/material.dart';
import 'package:reminder/models/category_collection.dart';

class ListViewCollections extends StatefulWidget {
  final CategoryCollection categoryCollection;

  const ListViewCollections({required this.categoryCollection});
  // const ListViewCollections({super.key});

  @override
  State<ListViewCollections> createState() => _ListViewCollectionsState();
}

class _ListViewCollectionsState extends State<ListViewCollections> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: (int oldIndex, int newIndex) {
        if (newIndex > oldIndex) {
          newIndex -= 1;
        }
        final item = widget.categoryCollection.removeItem(oldIndex);
        setState(() {
          widget.categoryCollection.insertItem(newIndex, item);
        });
      },
      children:
          widget.categoryCollection.categories
              .map(
                (category) => ListTile(
                  onTap: () {
                    setState(() {
                      category.toggleIsChecked();
                    });
                  },
                  key: ValueKey(category.name),
                  tileColor:
                      category.isChecked
                          ? Colors.grey[800]
                          : Colors.transparent,
                  leading: Container(
                    padding: EdgeInsets.all(3),

                    decoration: BoxDecoration(
                      color:
                          category.isChecked
                              ? Colors.blueAccent
                              : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color:
                            category.isChecked
                                ? Colors.blueAccent
                                : Colors.grey,
                      ),
                    ),
                    child: Icon(
                      Icons.check,
                      color:
                          category.isChecked
                              ? Colors.white
                              : Colors.transparent,
                    ),
                  ),
                  title: Row(
                    children: [
                      category.icon,
                      SizedBox(width: 10),
                      Text(category.name),
                    ],
                  ),
                  trailing: Icon(Icons.reorder),
                ),
              )
              .toList(),
    );
  }
}

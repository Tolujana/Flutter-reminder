import 'package:flutter/material.dart';
import 'package:reminder/models/category_collection.dart';
import 'package:reminder/screens/home/grid_view_items.dart';
import 'package:reminder/screens/home/list_view_collections.dart';

import 'footer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({Key? key}) : super(key: key);

  String layoutType = 'grid';
  CategoryCollection categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if (layoutType == 'grid') {
                setState(() {
                  layoutType = 'list';
                });
              } else {
                setState(() {
                  layoutType = 'grid';
                });
              }
            },
            child: Text(
              layoutType == 'grid' ? 'Edit' : 'DOne',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child:
                  layoutType == "grid"
                      ? GridViewItems(
                        categories: categoryCollection.selectedCategory(),
                      )
                      : ListViewCollections(
                        categoryCollection: categoryCollection,
                      ),
            ),

            Footer(),
          ],
        ),
      ),
    );
  }
}

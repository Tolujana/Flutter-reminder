import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: null,
            icon: Icon(Icons.add_circle),
            label: Text("New Reminder"),
          ),
          TextButton(onPressed: null, child: Text("Add List")),
        ],
      ),
    );
  }
}

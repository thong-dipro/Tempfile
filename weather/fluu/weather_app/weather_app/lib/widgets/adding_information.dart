import 'package:flutter/material.dart';

Widget AddingInfor() {
  final List<int> colorCodes = <int>[600, 500, 100];
  return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: Icon(Icons.list),
            trailing: Text(
              "GFG",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
            title: Text("List item $index"));
      });
}

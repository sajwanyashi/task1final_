import 'package:flutter/material.dart';

class List extends StatelessWidget {
  List({Key? key}) : super(key: key);

  var names= ['Mumbai','Mumbai','Mumbai' 'Mumbai','Mumbai',];

  var code = ['Maharashtra', 'Maharashtra','Maharashtra','Maharashtra','Maharashtra'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
              title: Text(names[index]),
              subtitle: Text(code[index]),
              trailing: Wrap(
                  spacing: 12,
                  children: <Widget>[
                    Icon(Icons.star_border_outlined, color: Colors.yellow),
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.yellow)
                  ]
              )
          );
        },
          itemCount: names.length,
          separatorBuilder: (context, index) {
            return Divider(height: 10, thickness: 1);
          },
        )
    );
  }}
import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);
  var names= ['Afghanistan','Albania','Algeria','Andorra','Angola'];
  var code = ['AF','AL','DZ','AD','AO'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
              leading: Text(code[index]),
              title: Text(names[index]),
              trailing: Wrap(
                  spacing: 12,
                  children: <Widget>[
                    Icon(Icons.star_border_outlined),
                    Icon(Icons.arrow_forward_ios_outlined)
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
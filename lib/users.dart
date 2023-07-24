import 'package:flutter/material.dart';

import 'userslist.dart';

class ListViewContextText extends StatelessWidget {
  const ListViewContextText({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Users'),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                users[index].image,
              ),
            ),
            title: Text(users[index].name),
            subtitle: Text(users[index].profession),
          );
        },
        childCount: users.length,
      )),
    );
  }
  }


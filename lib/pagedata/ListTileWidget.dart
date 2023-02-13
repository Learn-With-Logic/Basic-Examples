import 'package:flutter/material.dart';
import 'model.dart';


class ListTileWidget extends StatelessWidget {

  final User user;
  final VoidCallback onclick;

  ListTileWidget({required this.user,required this.onclick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onclick,
      title: Text(user.name),
      leading: CircleAvatar(
        child: Text(user.age.toString()),
      ),

    );
  }
}

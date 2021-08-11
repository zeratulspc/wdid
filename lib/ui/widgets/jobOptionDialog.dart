
import 'package:flutter/material.dart';

class JobOptionDialog extends StatelessWidget {
  final VoidCallback onEditTap;
  final VoidCallback onDeleteTap;

  JobOptionDialog({required this.onEditTap,required this.onDeleteTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          ListTile(
            onTap: onEditTap,
            title: Text("수정하기"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            onTap: onDeleteTap,
            title: Text("삭제하기"),
            trailing: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
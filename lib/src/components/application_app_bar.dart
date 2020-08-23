import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const ApplicationAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

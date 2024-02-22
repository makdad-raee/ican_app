import 'package:flutter/material.dart';

PreferredSizeWidget? defaultAppar({
  required BuildContext context,
  String? title,
  List<Widget>? action,
}) =>
    AppBar(
      title: Text(title!),
        actions: action,
    );
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
List<String> imageUrlHomeView = [
  'https://img.freepik.com/premium-psd/realistic-iphone-14-pro-max-3d-smartphone-screen-mockup-template-with-editable-background-psd_349001-554.jpg?w=740',
  'https://img.freepik.com/free-photo/programming-background-with-person-working-with-codes-computer_23-2150010135.jpg?w=740&t=st=1708575670~exp=1708576270~hmac=cba24d79999c7888c2409cd5a2cc634fb1817fcff021641a3226b02842d83d98',
  'https://img.freepik.com/free-photo/programming-background-with-person-working-with-codes-computer_23-2150010128.jpg?w=740&t=st=1708575716~exp=1708576316~hmac=5857875247ba3cd66e3fe40c4f605c267f788955e0fb525d5679824ef73fa519',
];

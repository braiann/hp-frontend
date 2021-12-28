import 'package:flutter/material.dart';

class FlatIconButton extends StatelessWidget {
  const FlatIconButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);
  final Function onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed(),
      child: icon,
    );
  }
}

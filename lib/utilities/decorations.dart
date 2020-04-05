import 'package:flutter/material.dart';

BoxDecoration getBoxDecoration(BuildContext context,
          {isPressed = false, borderRadius = 30.0}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            offset: isPressed ? Offset(-3, -3) : Offset(4, 6),
            color: Colors.black12,
            blurRadius: 6,
          ),
          BoxShadow(
            offset: isPressed ? Offset(3, 3) : Offset(-2, -3),
            color: Colors.white,
            blurRadius: 6,
          ),
        ],
      );
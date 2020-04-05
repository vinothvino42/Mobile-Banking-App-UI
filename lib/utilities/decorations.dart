import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/utilities/hex_color.dart';

BoxDecoration getBoxDecoration(BuildContext context,
          {isPressed = false, borderRadius = 30.0, blurRadius = 6.0}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: isPressed ? HexColor('#D7E6F4') : Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            offset: isPressed ? Offset(-3, -3) : Offset(4, 6),
            color: Colors.black12,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            offset: isPressed ? Offset(3, 3) : Offset(-2, -3),
            color: Colors.white,
            blurRadius: blurRadius,
          ),
        ],
      );
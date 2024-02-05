import 'package:flutter/material.dart';

abstract class BlueButton {
  static final style = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      Colors.blueAccent.shade400,
    ),
    overlayColor: MaterialStatePropertyAll(
      Colors.blueAccent.shade200,
    ),
    textStyle: const MaterialStatePropertyAll(
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

abstract class GreenButton {
  static final style = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      Colors.green.shade600,
    ),
    overlayColor: MaterialStatePropertyAll(
      Colors.green.shade500,
    ),
    textStyle: const MaterialStatePropertyAll(
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

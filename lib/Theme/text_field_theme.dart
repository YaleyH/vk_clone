import 'package:flutter/material.dart';

abstract class TextFieldAuth{
  static final style = InputDecoration(
    contentPadding: EdgeInsets.only(left: 15),
    hintText: 'Телефон или почта',
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.blueAccent.shade100,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.blueAccent,
        width: 2,
      ),
    ),
  );
}

abstract class TextFieldNumber{
  static final style = InputDecoration(
    counterText: '',
    contentPadding: const EdgeInsets.only(left: 15),
    prefixIcon: Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12, right: 10),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
      child: Container(
        child: const
        Text(
          '+7',
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide( color: Colors.blueAccent.shade100,
        width: 2,),
    ),
  );
}
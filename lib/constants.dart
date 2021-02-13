import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.person,
    color: kTextColor,
  ),
  hintText: 'Please enter your username',
  hintStyle: TextStyle(color: kTextColor),
  focusColor: kTextColor,
  hoverColor: kTextColor,
  labelStyle: TextStyle(
    color: kTextColor,
  ),
);

const kBackgraoundColor = Color(0xFFC4C4C4);

const kTextColor = Colors.white;

const kTextStyle = TextStyle(
  fontSize: 50,
  color: kTextColor,
);

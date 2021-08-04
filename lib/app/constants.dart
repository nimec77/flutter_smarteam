import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffff9800);
const kPrimaryLightColor = Color(0xffffc947);
const kPrimaryDarkColor = Color(0xffc66900);
const kSecondaryColor = Color(0xff607d8b);
const kSecondaryLightColor = Color(0xff8eacbb);
const kSecondaryDarkColor = Color(0xff34515e);
const kPrimaryTextColor = Color(0xff000000);
const kSecondaryTextColor = Color(0xff000000);

final kSmarteamThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
    onPrimary: kPrimaryTextColor,
    primaryVariant: kPrimaryDarkColor,
    secondary: kSecondaryColor,
    secondaryVariant: kSecondaryDarkColor,
  ),
);

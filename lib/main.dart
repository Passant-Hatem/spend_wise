import 'package:flutter/material.dart';

import 'package:spend_wise/spend_wise_home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const SpendWiseHome(),
  ));
}

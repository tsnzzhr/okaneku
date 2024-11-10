// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_idcamp/dump.dart';
import 'package:final_idcamp/pages/budgetplan.dart';
import 'package:final_idcamp/pages/cashflow.dart';
import 'package:final_idcamp/pages/savings.dart';
import 'package:flutter/material.dart';
import 'package:final_idcamp/components/navbar.dart';

class MainTemplate extends StatefulWidget {
  const MainTemplate({super.key});

  @override
  State<MainTemplate> createState() => _MainTemplateState();
}

class _MainTemplateState extends State<MainTemplate> {
  int selectedIdx = 0;

  final List<Widget> pages = [Cashflow(), Savings(), Budget()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(children: [
      Navbar(),
      Expanded(child: pages[selectedIdx]),
    ])));
  }
}

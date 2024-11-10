// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:final_idcamp/components/custom_icon.dart';
import 'package:flutter/widgets.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      color: Color.fromARGB(255, 191, 87, 71),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIcon(path: 'images/icons/home.png', size: 25.0),
          SizedBox(height: 50.0),
          CustomIcon(path: 'images/icons/report.png', size: 25.0),
          SizedBox(height: 50.0),
          CustomIcon(path: 'images/icons/setting.png', size: 25.0),
          SizedBox(height: 50.0),
          CustomIcon(path: 'images/icons/task.png', size: 25.0),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

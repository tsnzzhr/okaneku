// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:final_idcamp/pages/home.dart';
import 'package:final_idcamp/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:final_idcamp/components/custom_card.dart';
import 'package:final_idcamp/pages/maintemplate.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(children: [
      Navbar(),
      Expanded(
          child: Center(
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Container(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/finance/hello.png',
                      height: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Halo,',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 191, 87, 71)),
                        ),
                        Text(
                          'Tsania!',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800,
                              fontSize: 35.0,
                              color: Color.fromARGB(255, 191, 87, 71)),
                        )
                      ],
                    )
                  ],
                ),
              )),
              Container(
                  child: Column(
                children: [
                  CustomCard(
                      path: 'images/finance/fin0.png',
                      text: 'Cashflow Record',
                      redirect: MainTemplate()),
                  CustomCard(
                      path: 'images/finance/fin4.png',
                      text: 'Savings',
                      redirect: MainTemplate()),
                  CustomCard(
                      path: 'images/finance/fin2.png',
                      text: 'Budget Planner',
                      redirect: MainTemplate())
                ],
              ))
            ],
          ),
        ),
      )),
    ])));
  }
}

// ignore_for_file: prefer_const_constructors

// import 'package:final_idcamp/pages/maintemplate.dart';
import 'package:final_idcamp/pages/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 45, 45),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/finance/header.png',
              ),
              Text(
                'Okaneku',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 70.0,
                    fontFamily: 'Poppins'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Homepage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 191, 87, 71),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                        shadowColor: Colors.grey,
                        elevation: 5.0,
                      ),
                      child: Image.asset(
                        'images/icons/start.png',
                        height: 20.0,
                        width: 20.0,
                      ))
                ],
              ),
              Image.asset('images/finance/money.png', height: 400, width: 400),
              Image.asset(
                'images/finance/footer.png',
              ),
            ],
          ),

          // The splash image at the bottom
        ),
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:final_idcamp/pages/maintemplate.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String path;
  final String text;
  final Widget redirect;

  const CustomCard({
    super.key,
    required this.path,
    required this.text,
    required this.redirect,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return redirect;
      })),
      child: Card(
        color: Color.fromARGB(255, 191, 87, 71),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.asset(path, height: 80.0, width: 80.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

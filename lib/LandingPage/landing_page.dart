// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import '../Screens/about_us.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextS(
              text: 'We provide',
              color: Colors.white,
            ),
            Row(
              children: [
                TextS(
                  text: 'P',
                  color: Colors.yellow,
                ),
                TextS(
                  text: 'ersonal',
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                TextS(
                  text: 'P',
                  color: Colors.yellow,
                ),
                TextS(
                  text: 'rotective',
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                TextS(
                  text: 'E',
                  color: Colors.yellow,
                ),
                TextS(
                  text: 'quipment',
                  color: Colors.white,
                ),
              ],
            ),
            TextS(
              text: 'for you!',
              color: Colors.white,
            ),
            Buttons(),
          ],
        ),
      ),
      SizedBox(
        width: 400.0,
      ),
      Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Image.asset(
            'assets/images/man_with_safety_items.png',
          ),
        ),
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            children: pageChildren(),
          );
        } else {
          return Column(
            children: pageChildren(),
          );
        }
      },
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          MaterialButton(
            height: 50.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/about');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 15.0, horizontal: 30.0),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          MaterialButton(
            height: 50.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 15.0, horizontal: 30.0),
              child: Text(
                'Our Products',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// ignore: must_be_immutable
class TextS extends StatelessWidget {
  TextS({@required this.text, @required this.color});

  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40.0,
        color: color,
      ),
    );
  }
}

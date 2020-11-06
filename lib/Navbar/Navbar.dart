// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import '../Screens/about_us.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'images/bihani_enterprises_logo.png',
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Bihani Enterprises',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Text(
                    'Mfrs & Authorised Disributors Of:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  Container(
                    height: 40.0,
                    child: Image.asset(
                      'images/authorised_distributors.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/about');
                  },
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Products',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 70.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 0.0),
                      child: Image.asset(
                        'images/bihani_enterprises_logo.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Bihani Enterprises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Text(
                      'Mfrs & Authorised Disributors Of:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    Container(
                      height: 30.0,
                      child: Image.asset(
                        'images/authorised_distributors.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  },
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Products',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

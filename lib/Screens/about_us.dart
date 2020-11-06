// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import '../Navbar/Navbar.dart';

const kHeadingStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w900,
);

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
          return DesktopAboutUsPart1();
        } else {
          return MobileAboutUsPart1();
        }
      },
    );
  }
}

class DesktopAboutUsPart1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              DesktopAboutUsPart2(),
            ],
          ),
        ),
      ),
    );
  }
}

class DesktopAboutUsPart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.open_with_sharp,
              ),
              Text('A Glimpse Of Our Journey'),
              Icon(
                Icons.open_with_sharp,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: Image.network(
                                'https://icon-library.com/images/mission-icon/mission-icon-19.jpg'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Our Mission And Vision',
                                style: kHeadingStyle,
                              ),
                              Text(
                                  'At Bihani Enterprises, we are committed to deliver comprehensive\nsafety solutions to a wide range of industry segments.'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ),
                              );
                            },
                            child: Image.network(
                                'https://icon-library.com/images/certification-icon/certification-icon-10.jpg'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Our Quality',
                                style: kHeadingStyle,
                              ),
                              Text(
                                  'We are committed to provide ultimate customer satisfaction by\nensuring the production and testing of Industrial Safety Equipments.'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Image.network(
                    'https://www.enterprisesbihani.com/Images%20For%20Website/Guy%20Wearing%20All%20Safety%20Items.PNG'),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 500.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Image.network(
                      'https://www.enterprisesbihani.com/Images%20For%20Website/Different_Protections.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Column(
                  children: [
                    Text(
                      'Why Bihani Enterprises?',
                      style: kHeadingStyle,
                    ),
                    Text(
                        'One’s need for protection never stops. We strongly believe that "Safety and Well-\nbeing is the New Normal".\n\nFor over 30 years, Bihani Enterprises has been shielding workers across different\nindustries by manufacturing and providing them with supreme quality of Personal\nProtective Equipments.\n\nSince its inception, we have been committed to our core values of delivering best of\nbest solutions in Safety and Hand Protection.')
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300.0),
                child: Column(
                  children: [
                    Text(
                      'Committed to Better Safety',
                      style: kHeadingStyle,
                    ),
                    Text('We continuously strive to provide:-\n'),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.0,
                              child: Image.network(
                                  'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                            ),
                            Text(
                              'High Quality Products',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.0,
                              child: Image.network(
                                  'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                            ),
                            Text(
                              'On-Time Delivery',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.0,
                              child: Image.network(
                                  'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                            ),
                            Text(
                              'Economical Prices',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.0,
                              child: Image.network(
                                  'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                            ),
                            Text(
                              'Value For Money',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 500.0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Image.network(
                      'https://www.enterprisesbihani.com/Images%20For%20Website/Different%20Safety%20Items.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileAboutUsPart1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              MobileAboutUsPart2(),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileAboutUsPart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.open_with_sharp,
              ),
              Text('A Glimpse Of Our Journey'),
              Icon(
                Icons.open_with_sharp,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://www.enterprisesbihani.com/Images%20For%20Website/Guy%20Wearing%20All%20Safety%20Items.PNG',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Image.network(
                              'https://icon-library.com/images/mission-icon/mission-icon-19.jpg'),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Our Mission And Vision',
                              style: kHeadingStyle,
                            ),
                            Text(
                                'At Bihani Enterprises, we are committed to\ndeliver comprehensive safety solutions to a wide range of\nindustry segments.'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Image.network(
                              'https://icon-library.com/images/certification-icon/certification-icon-10.jpg'),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Our Quality',
                              style: kHeadingStyle,
                            ),
                            Text(
                                'We are committed to provide ultimate customer\nsatisfaction by ensuring the production and testing of\nIndustrial Safety Equipments.'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 500.0,
                child: Image.network(
                    'https://www.enterprisesbihani.com/Images%20For%20Website/Different_Protections.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Why Bihani Enterprises?',
                      style: kHeadingStyle,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        'One’s need for protection never stops. We strongly believe that "Safety and Well-being is the New Normal".\n\nFor over 30 years, Bihani Enterprises has been shielding workers across different industries by manufacturing and providing them with supreme quality of Personal Protective Equipments.\n\nSince its inception, we have been committed to our core values of delivering best of best solutions in Safety and Hand Protection.',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500.0,
                child: Image.network(
                    'https://www.enterprisesbihani.com/Images%20For%20Website/Different%20Safety%20Items.png'),
              ),
              Column(
                children: [
                  Text(
                    'Committed to Better Safety',
                    style: kHeadingStyle,
                  ),
                  Text('We continuously strive to provide:-\n'),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10.0,
                        child: Image.network(
                            'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                      ),
                      Text(
                        'High Quality Products',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10.0,
                        child: Image.network(
                            'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                      ),
                      Text(
                        'On-Time Delivery',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10.0,
                        child: Image.network(
                            'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                      ),
                      Text(
                        'Economical Prices',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10.0,
                        child: Image.network(
                            'https://www.pinclipart.com/picdir/middle/8-85452_right-tick-clipart.png'),
                      ),
                      Text(
                        'Value For Money',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

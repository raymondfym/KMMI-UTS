import 'package:flutter/material.dart';

import '../CardTemplate.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text.rich(
                  TextSpan(
                      text: 'Welcome back',
                     ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    ),
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    ),
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text.rich(
                  TextSpan(
                      text: 'Recently played',
                    ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    ),
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    ),
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text.rich(
                  TextSpan(
                      text: 'Recently played',
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    ),
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    ),
                    IceCreamCard(
                      flavorColor: Colors.blue,
                      flavor: 'Strawberry',
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text.rich(
                  TextSpan(
                    text: 'Welcome back',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IceCreamCard(flavorColor: Colors.redAccent,flavor: 'Strawberry',),
                    IceCreamCard(flavorColor: Colors.yellow.shade600,flavor: 'Strawberry',),
                    IceCreamCard(flavorColor: Colors.teal.shade300,flavor: 'Strawberry',)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text.rich(
                  TextSpan(
                    text: 'Recently played',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IceCreamCard(flavorColor: Colors.redAccent,flavor: 'Strawberry',),
                    IceCreamCard(flavorColor: Colors.yellow.shade600,flavor: 'Strawberry',),
                    IceCreamCard(flavorColor: Colors.teal.shade300,flavor: 'Strawberry',)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text.rich(
                  TextSpan(
                    text: 'Recently played',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IceCreamCard(flavorColor: Colors.redAccent,flavor: 'Strawberry',),
                    IceCreamCard(flavorColor: Colors.yellow.shade600,flavor: 'Strawberry',),
                    IceCreamCard(flavorColor: Colors.teal.shade300,flavor: 'Strawberry',)
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
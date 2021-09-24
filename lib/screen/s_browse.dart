import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model.dart';

class BrowseScreen extends StatefulWidget {
  BrowseScreen({Key? key}) : super(key: key);

  @override
  _BrowseScreenState createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
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
                    text: 'Search',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField()
            ],
          )
      ),
    );
  }
}
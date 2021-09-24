import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_project/model.dart';

class LibraryScreen extends StatefulWidget {
  LibraryScreen({Key? key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
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
                    text: 'Your library',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        title: Text("Codesinsider.com"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.green,
                      margin: EdgeInsets.all(20),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green, width: 1)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          )
      ),
    );
  }
}
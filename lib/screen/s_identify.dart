import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class IdentifyScreen extends StatefulWidget {
  IdentifyScreen({key}) : super(key: key);

  @override
  _IdentifyScreenState createState() => _IdentifyScreenState();
}

class _IdentifyScreenState extends State<IdentifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Tap to Shazam',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            AvatarGlow(
              endRadius: 200,
              animate: true,
              child: GestureDetector(
                onTap: () => print('tapped'),
                child: Material(
                  shape: CircleBorder(),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(40),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue.shade900
                    ),
                    child: Image.asset(
                      'lib/assets/images/logoHimakom.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
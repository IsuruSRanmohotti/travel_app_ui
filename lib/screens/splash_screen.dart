import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Travel',style: GoogleFonts.pacifico(color: Colors.white,fontSize: 40)), SizedBox(width: 8,), Icon(Icons.travel_explore_rounded,color: Colors.white,size: 45,),
              ],
            ),
            SizedBox(height: 15,),
            Text('Find Your Dream Destination With Us', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300 ),textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
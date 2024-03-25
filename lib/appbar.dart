import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicProfilePage extends StatefulWidget {
  @override
  _PublicProfilePageState createState() => _PublicProfilePageState();
}

class _PublicProfilePageState extends State<PublicProfilePage> {
  //this is the code for the appbar/the top of the page, can copy and paste into your code
  //can ignore everything but the Scaffold portion
  @override
  Widget build(BuildContext context) {
    //this section
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            // Handle onTap action here
            print('GiveHub Button Pressed!');
          },
          child: Row(
            children: [
              Text(
                'GiveHub',
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false, // Align title towards the left
        backgroundColor: const Color(0xFFFF3B3F), // Set the color here
      ),
    ); //ends here
  }
}

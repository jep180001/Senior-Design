//remember to add the dependencies for the packages you import and to run flutter pub get before running the program
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Color buttonColor = Color(0xCAEBF2);
  double buttonFontSize = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //the upgrade of flutter caused a shadow
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        //the top portion of the webpage
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF3B3F),
          elevation: 0,
          actions: [
            //padding can be used to help add space or move items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                //control the flow of buttons when pressed
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'About Us',
                  //change change the font, size, color, and bold/thinness 
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_up_page');
                },
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
          title: Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text(
                'GiveHub',
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xFFFF3B3F), 
                //can align text either left, right, or center
                alignment: Alignment.bottomLeft, 
                padding: EdgeInsets.only(left: 50, bottom: 50),
                child: Text(
                  'Hello, \nWelcome to GiveHub.',
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
           Expanded(
              flex: 1,
              child: Container(
                //the background color and can set opacity
                color: Color(0xCAEBF2).withOpacity(.50), 
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            //button color
                            backgroundColor: Color(0xA9A9A9).withOpacity(0.20),
                            //button size
                            minimumSize: Size(150, 150), 
                            //makes the edges rounder
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 200,
                            child: Center(
                              child: Text(
                                'Contact Us',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontSize: buttonFontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          //color: Color(0x00caebf2),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xA9A9A9).withOpacity(0.20),
                            minimumSize: Size(150, 150), // Button size
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          //used a box to get the square box shape for the buttons
                          child: SizedBox(
                            height: 150,
                            width: 200,
                            child: Center(
                              child: Text(
                                'Our Network',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontSize: buttonFontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xA9A9A9).withOpacity(0.20),
                            minimumSize: Size(150, 150), // Button size
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 200,
                            child: Center(
                              child: Text(
                                'Apply Now',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontSize: buttonFontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

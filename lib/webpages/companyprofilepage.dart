import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profilepicture.dart';

class CompanyProfilePage extends StatefulWidget {
  @override
  _CompanyProfilePageState createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  String companyName = 'Company Name';
  String companyInfo = 'Company Info';
  String companyAddress = 'Company Address';
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100), // Add padding between app bar and content
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: ProfilePicture(
                            name: 'Profile',
                            radius: 100,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xCAEBF2).withOpacity(1),
                          borderRadius: BorderRadius.circular(20.0), // Add rounded edges here
                        ),
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              companyName,
                              style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.bold, color:Colors.black)
                            ),
                            SizedBox(height: 30), // Add some space here
                            Text(
                              companyAddress,
                              style: GoogleFonts.inter(fontSize: 24, color: Colors.black)
                            ),
                            SizedBox(height: 30), 
                            Text(
                              companyInfo,
                              style: GoogleFonts.inter(fontSize: 24, color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : null, // Set color to red when favorite is true
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite; // Toggle the favorite status
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle edit button press
                            _showEditDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xA9A9A9).withOpacity(.2), // Change this to your desired color
                          ),
                          child: Text('Edit Profile', style: GoogleFonts.inter(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:  Color(0xCAEBF2).withOpacity(1), // Background color for the right box
                      borderRadius: BorderRadius.circular(20.0), // Add rounded edges here
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpansionTile(
                          title: Text(
                            'Upcoming Events',
                            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          children: [
                            ExpansionTile(
                              title: Text(
                                'Event 1',
                                style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              children: [
                                ListTile(
                                  title: Text('Event 1 Detail 1'),
                                  onTap: () {
                                    // Handle event 1 detail 1 tap
                                  },
                                ),
                                ListTile(
                                  title: Text('Event 1 Detail 2'),
                                  onTap: () {
                                    // Handle event 1 detail 2 tap
                                  },
                                ),
                              ],
                            ),
                            ExpansionTile(
                              title: Text(
                                'Event 2',
                                style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              children: [
                                ListTile(
                                  title: Text('Event 2 Detail 1'),
                                  onTap: () {
                                    // Handle event 2 detail 1 tap
                                  },
                                ),
                                ListTile(
                                  title: Text('Event 2 Detail 2'),
                                  onTap: () {
                                    // Handle event 2 detail 2 tap
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        ExpansionTile(
                          title: Text(
                            'Event History',
                            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          children: [
                            ListTile(
                              title: Text('History 1'),
                              onTap: () {
                                // Handle history 1 tap
                              },
                            ),
                            ListTile(
                              title: Text('History 2'),
                              onTap: () {
                                // Handle history 2 tap
                              },
                            ),
                            // Add more history items here
                          ],
                        ),
                        SizedBox(height: 15),
                        ExpansionTile(
                          title: Text(
                            'Donation History',
                            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          children: [
                            ListTile(
                              title: Text('Donation 1'),
                              onTap: () {
                                // Handle donation 1 tap
                              },
                            ),
                            ListTile(
                              title: Text('Donation 2'),
                              onTap: () {
                                // Handle donation 2 tap
                              },
                            ),
                            // Add more donation items here
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _showEditDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(0xCAEBF2).withOpacity(1), // Set the background color to grey
        title: Text('Edit Profile'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Company Name'),
              onChanged: (value) {
                setState(() {
                  companyName = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Company Address'),
              onChanged: (value) {
                setState(() {
                  companyAddress = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Company Info'),
              onChanged: (value) {
                setState(() {
                  companyInfo = value;
                });
              },
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Save'),
          ),
        ],
      );
    },
  );
}
}

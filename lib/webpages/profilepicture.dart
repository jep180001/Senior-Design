import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String name;
  final double radius;
  final double fontSize;

  const ProfilePicture({
    Key? key,
    required this.name,
    required this.radius,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Color(0xA9A9A9).withOpacity(1), // Customize the background color as needed
      child: Text(
        name.substring(0, 1).toUpperCase(),
        style: TextStyle(
          color: Colors.white, // Customize text color
          fontSize: fontSize,
        ),
      ),
    );
  }
}

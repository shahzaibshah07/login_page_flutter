import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {onPressed;},
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey, // Background color
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(20.0), // Border radius
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 15 ,color: Colors.black),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 15 // Text color
            ),
          ),
        ],
      ),
    );
  }
}

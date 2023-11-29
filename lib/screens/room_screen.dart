import 'package:flutter/material.dart';

class Room_Screen extends StatelessWidget {
  const Room_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '', style: TextStyle(fontSize: 15, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://th.bing.com/th/id/OIP.HRQid9OfQo5LE_Zjs_crpQHaEK?w=264&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
            color: Colors.purpleAccent,
            width: 5
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      width: 400,
    );
  }
}

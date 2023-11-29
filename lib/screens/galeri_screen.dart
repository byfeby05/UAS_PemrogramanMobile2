import 'package:flutter/material.dart';

class Galeri_Screen extends StatelessWidget {
  const Galeri_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '', style: TextStyle(fontSize: 15, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://th.bing.com/th/id/OIP.74skqp2Ar5i4YrBgDGk6hQHaEK?w=291&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
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

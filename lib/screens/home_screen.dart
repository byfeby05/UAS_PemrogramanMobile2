import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Selamat Datang', style: TextStyle(fontSize: 15, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://pbs.twimg.com/profile_images/1022014132042776576/kotRPYpl_400x400.jpg'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.blue,
          width: 5
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 600,
      width: 400,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:donation/pages/donation.dart';
import 'package:donation/pages/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Donation(),
        '/petDetail': (context) => const PetDetailPage(),
      },
    );
  }
}

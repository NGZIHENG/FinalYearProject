import 'package:flutter/material.dart';

class PickUpPage extends StatefulWidget {
  const PickUpPage({super.key});

  @override
  State<PickUpPage> createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  @override
  Widget build(BuildContext context) => 
  const Scaffold(
    body: Center(
      child: Text('Pick Up Page'),
    ),
  );
        
}
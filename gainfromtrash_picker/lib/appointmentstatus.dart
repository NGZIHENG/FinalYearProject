import 'package:flutter/material.dart';

import 'tabbarpage/acceptedpage.dart';
import 'tabbarpage/completedpage.dart';
import 'tabbarpage/pickuppage.dart';

class AppointmentStatusScreen extends StatefulWidget {
  const AppointmentStatusScreen({super.key});

  @override
  State<AppointmentStatusScreen> createState() => _AppointmentStatusScreenState();
}

class _AppointmentStatusScreenState extends State<AppointmentStatusScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3, 
    child: Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(title: const Text('Appointment Status'),
        backgroundColor: Colors.green[300],
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Accepted'),
            Tab(text: 'Pick Up'),
            Tab(text: 'Completed'),
          ],
          indicatorColor: Colors.white, // Set the selected tab indicator color
          indicatorSize: TabBarIndicatorSize.tab, // Set the indicator size to match the tab size
          labelColor: Colors.white, // Set the color of the selected tab's label
          unselectedLabelColor: Colors.white60,
        )
      ),
      body: const TabBarView(
        children: [
          AcceptedPage(),
          PickUpPage(),
          CompletedPage(),
        ],
      )
    )
  );

}
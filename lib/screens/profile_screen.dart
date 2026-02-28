import 'package:flutter/material.dart';
import 'package:health_tracker_app/widgets/contact_card.dart';
import 'package:health_tracker_app/widgets/doctor_item.dart';
import 'package:health_tracker_app/widgets/information_card.dart';

class ProfileScreen extends StatelessWidget { 
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Profile'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Personal Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            InformationCard(),
            const Text(
              "Contact Info",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ContactCard(),
            const Text(
              "My Doctor List",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return DoctorItem(); // Your custom card
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
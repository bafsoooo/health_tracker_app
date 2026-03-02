import 'package:flutter/material.dart';
import 'package:health_tracker_app/widgets/medication_item.dart';

class MedicationsScreen extends StatelessWidget {
  const MedicationsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Medications',
        ),
        actions: [  
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return MedicationItem(
              medicationName: "Amoxicillin 500mg",
            );
          },
        ),
      ),
    );
  }
}
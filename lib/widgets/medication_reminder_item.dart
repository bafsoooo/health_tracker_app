import 'package:flutter/material.dart';

class MedicationReminderItem extends StatelessWidget{
  
  const MedicationReminderItem({super.key, required this.medicationName, required this.time});

  final String medicationName ;
  final String time ; 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // 1. The Progress Circle
                SizedBox(
                  width: 50, // Size of the circle
                  height: 50,
                  child: CircularProgressIndicator(
                    value: 0.7, // 70% progress
                    strokeWidth: 8, // Thickness of the ring
                    backgroundColor: Colors.grey[200], // The "empty" track color
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black), // Progress color
                    strokeCap: StrokeCap.round, // This creates the rounded ends
                  ),
                ),
                // 2. The Center Icon/Image
                Icon(
                  Icons.medication_rounded, // Replace with your icon
                  color: Colors.black,
                  size: 25,
                ),
              ],
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medicationName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      time,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
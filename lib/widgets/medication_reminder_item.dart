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
                SizedBox(
                  width: 50, 
                  height: 50,
                  child: CircularProgressIndicator(
                    value: 0.7, 
                    strokeWidth: 8, 
                    backgroundColor: Colors.grey[200], 
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black), 
                    strokeCap: StrokeCap.round, 
                  ),
                ),
                const Icon(
                  Icons.medication_rounded, 
                  color: Colors.black,
                  size: 25,
                ),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medicationName,
                  style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      "Time : $time",
                      style:const TextStyle(fontSize: 12, color: Colors.grey),
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
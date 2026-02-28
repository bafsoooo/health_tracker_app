import 'package:flutter/material.dart';
import 'package:health_tracker_app/widgets/status_checkbox.dart';

class MedicationItem extends StatefulWidget {
  final String medicationName;

  const MedicationItem({super.key, required this.medicationName});

  @override
  State<MedicationItem> createState() => _MedicationItemState();
}

class _MedicationItemState extends State<MedicationItem> {
  
  bool isTaken = false;
  bool isMissed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16),
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
                  Icon(
                    Icons.medication_rounded, 
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
                  widget.medicationName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      "Time : 08:00 ",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    StatusCheckboxWidget(),
                    Text("Taken",),
                    SizedBox(width: 8),
                    StatusCheckboxWidget(),
                    Text("Missed"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SymptomTrackerItem extends StatelessWidget {
  const SymptomTrackerItem({super.key, required this.symptomName , required this.symptomIconPath , required this.standardRate});

  final String symptomName;
  final String symptomIconPath; 
  final double standardRate ;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              Stack(
                alignment: Alignment.center,
                children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                    ),
                    const Icon(
                      Icons.medication_rounded, 
                      color: Colors.black,
                      size: 12,
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Text(
                  symptomName,
                  style:const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),  
              ],
            ),
            const SizedBox(height: 16),
            Image.asset(  
              symptomIconPath,
              width: 120,
              height: 50,
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                Text(
                  '$standardRate',
                  style:const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'mm/g',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

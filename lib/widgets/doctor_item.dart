import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsetsGeometry.symmetric(vertical: 10),
      child: Padding(
        padding:const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/doctor.png'),
            ),
            const SizedBox(width: 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Dr.Djoudi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(vertical: 2,horizontal: 8.0),
                  decoration:const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    "Cardiologist",
                    style: TextStyle(
                      fontSize: 10, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
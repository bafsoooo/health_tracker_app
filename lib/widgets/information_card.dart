import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/user.dart';

class InformationCard extends StatelessWidget {
  InformationCard({super.key});

  final User user = User(
    name: "Abderahmane", 
    birthDate: "01/01/1990", 
    birthAdress: "123 Main Street", 
    job: "Software Engineer", 
    maritalStatus: "Single", 
    gender: "Male", 
    phoneNumber: "9999999999",
    address: "Alger Center",
    bloodType: "O+"
  );




  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsetsGeometry.symmetric(vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/user.png'), 
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Container(
                        padding:const  EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child:const Text(
                          "Patient",
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                  ],
                )
              ],
            ),
            Text("Birth Date : ${user.birthDate}" , style:const TextStyle(fontSize: 12,color: Colors.grey),),
            Text("Birth Address : ${user.birthAdress}", style:const TextStyle(fontSize: 12,color: Colors.grey)),
            Text("Job : ${user.job}", style: const TextStyle(fontSize: 12,color: Colors.grey)),
            Text("Marital Status : ${user.maritalStatus}", style:const TextStyle(fontSize: 12,color: Colors.grey)),
            Text("Blood Type : ${user.bloodType}", style:const TextStyle(fontSize: 12,color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/user.dart';

class ContactCard extends StatelessWidget{
  
  ContactCard({super.key});

  final User user = User(
    name: "Abderahmane", 
    birthDate: "01/01/1990", 
    birthAdress: "123 Main Street", 
    job: "Software Engineer", 
    maritalStatus: "Single", 
    gender: "Male", 
    phoneNumber: "9999999999",
    address: "Alger Centre",
    bloodType: "O+"
  );
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Padding(
        padding:const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Phone Number : ${user.phoneNumber}", style: TextStyle(fontSize: 12,color: Colors.grey),),
            SizedBox(width: 5,),
            Text("Address : ${user.address}", style: TextStyle(fontSize: 12,color: Colors.grey),),
          ],
        ), 
      ),
    );
  }
}
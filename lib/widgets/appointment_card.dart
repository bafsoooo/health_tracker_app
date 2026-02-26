import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/appointment.dart';
import 'package:intl/intl.dart';

class AppointmentCard extends StatelessWidget{

  final Appointment appointment;

  const AppointmentCard({super.key, required this.appointment});
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/doctor.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointment.doctorName,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        appointment.specialization,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Date : ${DateFormat('dd/MM/yyyy').format(appointment.dateTime)}",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "Time : ${DateFormat('HH:mm').format(appointment.dateTime)} - ${DateFormat('HH:mm').format(appointment.dateTime.add(Duration(hours: 1)))}",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      "View Details",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
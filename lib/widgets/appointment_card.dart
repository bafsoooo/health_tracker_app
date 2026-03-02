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
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointment.doctorName,
                        style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8.0),
                        decoration:const  BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          appointment.specialization,
                          style: TextStyle(
                            fontSize: 14, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
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
                        style: const TextStyle(fontSize: 16, color: Colors.grey , fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Time : ${DateFormat('HH:mm').format(appointment.dateTime)} - ${DateFormat('HH:mm').format(appointment.dateTime.add(Duration(hours: 1)))}",
                        style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
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
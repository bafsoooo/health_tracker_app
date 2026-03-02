import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/appointment.dart';
import 'package:intl/intl.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.appointment});

  final Appointment appointment ;
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin:const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(appointment.doctorAvatarUrl),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. ${appointment.doctorName}",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8.0),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          appointment.specialization,
                          style: const TextStyle(
                            fontSize: 10, 
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    "Date : ${DateFormat('dd/MM/yyyy').format(appointment.dateTime)}",
                    style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    "Time : ${DateFormat('HH:mm').format(appointment.dateTime)} - ${DateFormat('HH:mm').format(appointment.dateTime.add(Duration(hours: 1)))}",
                    style:const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    "Status : ",
                    style:const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8.0),
                    decoration:const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      appointment.status.toString().split('.').last.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 12, 
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: null, 
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    )
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child:const Text(
                      "Reschedule",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    )
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}
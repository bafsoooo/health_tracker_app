import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/appointment.dart';
import 'package:health_tracker_app/widgets/appointment_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [  
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Abderahmane!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "UPCOMING APPOINTMENTS",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {
                      // Navigate to appointments screen
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Contact receptionist ',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Example count
                  itemBuilder: (context, index) {
                    return AppointmentCard(
                      appointment: Appointment(
                        doctorName: "Dr. Smith", 
                        doctorAvatarUrl: "assets/images/doctor.png", 
                        specialization: "Cardiology", 
                        dateTime: DateTime.now().add(Duration(days: index + 1)), 
                        status: AppointmentStatus.upcoming,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
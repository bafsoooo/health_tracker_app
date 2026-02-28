import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/appointment.dart';
import 'package:health_tracker_app/widgets/appointment_card.dart';
import 'package:health_tracker_app/widgets/medication_reminder_item.dart';
import 'package:health_tracker_app/widgets/symptom_tracker_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
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
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "UPCOMING APPOINTMENTS",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(4),
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
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Example count
                  itemBuilder: (context, index) {
                    return AppointmentCard(
                      appointment: Appointment(
                        doctorName: "Dr. Djoudi", 
                        doctorAvatarUrl: "assets/images/doctor.png", 
                        specialization: "Cardiology", 
                        dateTime: DateTime.now().add(Duration(days: index + 1)), 
                        status: AppointmentStatus.upcoming,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(
                      "MEDICATION REMINDERS",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "See all >",
                      style: TextStyle(
                        fontSize: 12, 
                        color: Colors.grey
                      ),
                    )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return MedicationReminderItem(
                      medicationName: "Medication ${index + 1}", 
                      time: "08:00"
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                "SYMPTOM TRACKER",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SymptomTrackerItem(
                      symptomName: "Heart Rate", 
                      symptomIconPath: "assets/images/rate1.png", 
                      standardRate: 65.0
                    ),
                    SizedBox(width: 16),
                    SymptomTrackerItem(
                      symptomName: "Blood Pressure", 
                      symptomIconPath: "assets/images/rate2.png", 
                      standardRate: 120
                    ),
                  ],
                )

              ),
            ],
          ),
        ),
      )
    );
  }
}
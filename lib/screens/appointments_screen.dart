import 'package:flutter/material.dart';
import 'package:health_tracker_app/models/appointment.dart';
import 'package:health_tracker_app/widgets/doctor_card.dart';


class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Appointments',
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
        body: Column(
          children: [
            Container(
              color: Colors.grey[200],
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.black,
                dividerColor: Colors.grey[300],
                unselectedLabelColor: Colors.grey,
                overlayColor: WidgetStateColor.resolveWith((states) => Colors.transparent),
                labelColor: Colors.black,
                tabs:[
                  Tab(
                    text: "Upcoming"
                  ),
                  Tab(
                    text: "Past"
                  ),
                ] 
              ),
            ),
      
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TabBarView(
                  children: 
                  [
                    // Upcoming Appointments List
                    ListView.builder(
                      itemCount: 5, 
                      itemBuilder: (context, index) {
                        return DoctorCard(
                          appointment: Appointment(
                            doctorName: "Djoudi",
                            doctorAvatarUrl: "assets/images/doctor.png",
                            specialization: "Cardiologist",
                            dateTime: DateTime.now().add(Duration(days: index + 1)),
                            status: AppointmentStatus.upcoming,
                          )
                        ); 
                      },
                    ),
                      
                    // Past Appointments List
                    ListView.builder(
                      itemCount: 5, 
                      itemBuilder: (context, index) {
                        return  DoctorCard(
                          appointment: Appointment(
                            doctorName: "Lotfi",
                            doctorAvatarUrl: "assets/images/doctor.png",
                            specialization: "Neurologist",
                            dateTime: DateTime.now().subtract(Duration(days: index + 1)),
                            status: AppointmentStatus.completed,
                          )
                        ); 
                      },
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
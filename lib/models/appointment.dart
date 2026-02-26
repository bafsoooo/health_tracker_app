enum AppointmentStatus {
  upcoming,
  completed,
  cancelled,
}


class Appointment {
  final String doctorName;
  final String doctorAvatarUrl;
  final String specialization;
  final DateTime dateTime;
  final AppointmentStatus status;

  Appointment({
    required this.doctorName,
    required this.doctorAvatarUrl,
    required this.specialization,
    required this.dateTime,
    required this.status,
  });


}
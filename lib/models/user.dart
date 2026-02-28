class User {
  final String name;
  final String birthDate;
  final String birthAdress;
  final String job;
  final String maritalStatus;
  final String gender;
  final String bloodType;
  final String phoneNumber;
  final String address;
  final String? avatarUrl;

  User({
    required this.name,
    required this.birthDate,
    required this.birthAdress,
    required this.job,
    required this.maritalStatus,
    required this.gender,
    required this.phoneNumber,
    required this.bloodType,
    required this.address,
    this.avatarUrl = "assets/images/avatar.png",
  });
}
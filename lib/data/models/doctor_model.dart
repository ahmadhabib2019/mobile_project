import '../../domain/entities/doctor.dart';

class DoctorModel extends Doctor {
  DoctorModel({
    required String name,
    required String specialization,
    required String imageUrl,
  }) : super(name: name, specialization: specialization, imageUrl: imageUrl);

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      name: json['name'],
      specialization: json['specialization'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'specialization': specialization,
      'imageUrl': imageUrl,
    };
  }
}

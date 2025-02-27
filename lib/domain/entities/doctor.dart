import 'dart:convert';

class Doctor {
  final String name;
  final String specialization;
  final String imageUrl;

  Doctor({
    required this.name,
    required this.specialization,
    required this.imageUrl,
  });

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'] ?? 'Unknown',
      specialization: map['specialization'] ?? 'Unknown',
      imageUrl: map['image_url'] ?? '',
    );
  }

  // Jika ingin parse dari JSON String
  factory Doctor.fromJson(String source) => Doctor.fromMap(jsonDecode(source));
}

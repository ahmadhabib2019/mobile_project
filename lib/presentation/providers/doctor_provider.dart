import 'package:flutter/material.dart';
import '../../domain/entities/doctor.dart';
import '../../domain/usecases/get_doctors.dart';

class DoctorProvider with ChangeNotifier {
  final GetDoctors getDoctors;

  DoctorProvider({required this.getDoctors});

  List<Doctor> _doctors = [];
  List<Doctor> get doctors => _doctors;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchDoctors() async {
    _isLoading = true;
    notifyListeners();

    _doctors = await getDoctors();
    _isLoading = false;
    notifyListeners();
  }
}

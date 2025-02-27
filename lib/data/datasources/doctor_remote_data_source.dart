import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../domain/entities/doctor.dart';

class DoctorRemoteDataSource {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<List<Doctor>> fetchDoctors() async {
    final List<dynamic> response = await supabase.from('doctors').select();

    if (response.isEmpty) {
      throw Exception('No doctors found');
    }
    print(response);
    return response
        .map((data) => Doctor.fromMap(data as Map<String, dynamic>))
        .toList();
  }
}

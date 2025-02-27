import '../../domain/repositories/doctor_repository.dart';
import '../../domain/entities/doctor.dart';
import '../datasources/doctor_remote_data_source.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteDataSource remoteDataSource;

  DoctorRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Doctor>> getDoctors() {
    return remoteDataSource.fetchDoctors();
  }
}

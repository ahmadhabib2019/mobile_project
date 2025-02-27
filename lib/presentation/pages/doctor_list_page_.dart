import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../../data/repositories/doctor_repository_impl.dart';
import '../../data/datasources/doctor_remote_data_source.dart';
import '../../domain/entities/doctor.dart';

class DoctorListPage extends StatefulWidget {
  @override
  _DoctorListPageState createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final DoctorRepositoryImpl repository = DoctorRepositoryImpl(
    DoctorRemoteDataSource(),
  );

  late Future<List<Doctor>> _doctorsFuture;

  @override
  void initState() {
    super.initState();
    _doctorsFuture = repository.getDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: "Doctors List",
        onMenuPressed: () {
          _scaffoldKey.currentState
              ?.openDrawer(); // Add your menu pressed logic here
        },
      ),
      drawer: Drawer(
        // 🔹 Tambahkan menu drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<Doctor>>(
        future: _doctorsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No doctors available'));
          }

          final doctors = snapshot.data!;
          return ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              final doctor = doctors[index];
              String imageUrl = doctor.imageUrl;
              return Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    onBackgroundImageError: (_, __) {
                      // Jika gagal load gambar, pakai gambar dummy lokal
                      setState(() {
                        imageUrl =
                            'https://randomuser.me/api/portraits/men/1.jpg';
                      });
                    },
                  ),
                  title: Text(
                    doctor.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(doctor.specialization),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

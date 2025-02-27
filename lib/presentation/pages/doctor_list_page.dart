// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/doctor_provider.dart';
// import '../widgets/doctor_item.dart';

// class DoctorListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final doctorProvider = Provider.of<DoctorProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Daftar Dokter',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: Colors.blueAccent,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.white),
//             onPressed: () {
//               // Tambahkan fungsi pencarian di sini
//             },
//           ),
//         ],
//       ),
//       body:
//           doctorProvider.isLoading
//               ? Center(child: CircularProgressIndicator())
//               : ListView.builder(
//                 padding: EdgeInsets.all(16),
//                 itemCount: doctorProvider.doctors.length,
//                 itemBuilder: (context, index) {
//                   final doctor = doctorProvider.doctors[index];
//                   return DoctorItem(doctor: doctor);
//                 },
//               ),
//     );
//   }
// }

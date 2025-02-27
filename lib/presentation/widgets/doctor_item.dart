import 'package:flutter/material.dart';
import '../../domain/entities/doctor.dart';

class DoctorItem extends StatelessWidget {
  final Doctor doctor;

  const DoctorItem({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Gambar Dokter
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://via.placeholder.com/150',
                  ), // Ganti dengan URL gambar dokter
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            // Informasi Dokter
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    doctor.specialization,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '4.8', // Ganti dengan rating dokter
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Tombol Detail
            IconButton(
              icon: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
              onPressed: () {
                // Tambahkan navigasi ke halaman detail dokter
              },
            ),
          ],
        ),
      ),
    );
  }
}

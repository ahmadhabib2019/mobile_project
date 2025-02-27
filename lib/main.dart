import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'data/repositories/doctor_repository_impl.dart';
import 'presentation/pages/doctor_list_page_.dart'; // Corrected import statement
import "package:supabase_flutter/supabase_flutter.dart" show Supabase;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://vqmxculxawfltawseqzg.supabase.co', // URL Supabase
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZxbXhjdWx4YXdmbHRhd3NlcXpnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk0MDg4MzIsImV4cCI6MjA1NDk4NDgzMn0.rrkx4C2tCVYet5ncUP-b9HQLndXwJ9-RH33ACv_4MCQ', // Ganti dengan Anon Key dari Supabase
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorListPage(),
    );
  }
}

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ApiService {
//   final String baseUrl =
//       "https://vqmxculxawfltawseqzg.supabase.co"; // Ganti dengan endpoint Raiden Anda
//   final String apiKey =
//       " eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZxbXhjdWx4YXdmbHRhd3NlcXpnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk0MDg4MzIsImV4cCI6MjA1NDk4NDgzMn0.rrkx4C2tCVYet5ncUP-b9HQLndXwJ9-RH33ACv_4MCQ"; // Ganti dengan API key jika diperlukan

//   Future<dynamic> fetchDoctors() async {
//     final response = await http.get(
//       Uri.parse(
//         'http://localhost:8002/rest/v1/doctors',
//       ), // Ganti dengan endpoint yang sesuai
//       headers: {
//         'Authorization':
//             'eyJhbGciOiJIUzI1NiIsImtpZCI6Ii9oaUdUZW83TndNSEZQb2ciLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3ZxbXhjdWx4YXdmbHRhd3NlcXpnLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJlZDM2YzlkMi04ZmM3LTRmZWYtOWVjOS1iNGU2NGQ2NWM1NWMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzQwNTI3ODUxLCJpYXQiOjE3NDA1MjQyNTEsImVtYWlsIjoic3VwZXJhZG1pbkBnbWFpbC5jb20iLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7ImVtYWlsX3ZlcmlmaWVkIjp0cnVlfSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc0MDUyNDI1MX1dLCJzZXNzaW9uX2lkIjoiMDRmY2YyZjUtMjM0NC00NzQ2LWFkZTAtOTc5Y2FjNDNhODRjIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.UYCekZzV3Wq0acWpIoAtbSlHnPoztaW_W-PhbuVT5ro', // Jika menggunakan token autentikasi
//         'Content-Type': 'application/json',
//       },
//     );

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }

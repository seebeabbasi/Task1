import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Student.dart';

class Api {
  static final String _baseUrl = 'http://10.94.165.95/Api/api/';

  Future<http.Response> createAccount(Student student) async {
    final url = Uri.parse('${_baseUrl}AccountHandler/SignUp');

    // Encode the student map directly
    return await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(student.map()),
    );
  }
}
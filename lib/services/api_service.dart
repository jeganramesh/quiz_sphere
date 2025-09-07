import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<String> sendMessage(
    String message, {
    String userId = "flutter_user",
  }) async {
    final url = Uri.parse('$baseUrl/chat');

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"message": message, "user_id": userId}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["response"];
    } else {
      throw Exception("Failed to get response: ${response.statusCode}");
    }
  }
}

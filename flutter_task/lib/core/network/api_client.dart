import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;

  ApiClient(this.baseUrl);

  Future<http.Response> getRequest(String endpoint) async {
    final url = Uri.parse('https://reqres.in$endpoint');
    return await http.get(url);
  }
}

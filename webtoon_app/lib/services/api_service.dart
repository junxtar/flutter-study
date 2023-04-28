import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtton in webtoons) {
        print(webtton);
      }
      return;
    }
    throw Error();
  }
}

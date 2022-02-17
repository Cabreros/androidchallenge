import 'dart:convert';

import 'package:androidchallenge/model/colours_model.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<List<Colour>> getColours(keyword) async {
    Map<String, String> requestHeaders;

    requestHeaders = {
      'keywords': keyword,
      'format': 'json',
      'numResults': '20'
    };

    final uri = Uri.https('colourlovers.com', '/api/colors', requestHeaders);
    final response = await http.get(uri);

    try {
      var body = (json.decode(response.body) as List)
          .map((i) => Colour.fromJson(i))
          .toList();

      return body;
    } catch (e) {
      throw 'there was an error when retrieving your colours: ' + e.toString();
    }
  }
}

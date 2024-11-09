import 'dart:convert';

import 'package:bloc2_5/data/api/api.dart';
import 'package:bloc2_5/data/api/api_respose.dart';
import 'package:http/http.dart' as http;

class ApiClient implements Api {
  final http.Client client;

  ApiClient({required this.client});

  @override
  Future<ApiRespone> onGetProduct() async {
    try {
      final response =
          await client.get(Uri.parse("https://fakestoreapi.com/products"));

      if (response.statusCode != 200) {
        throw Exception();
      }

      final body = json.decode(response.body);
      return ApiRespone(
        record: body,
      );
    } catch (e) {
      rethrow;
    }
  }
}
